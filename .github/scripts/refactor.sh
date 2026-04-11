#!/bin/bash
set -e
IFS=$'\n'

git fetch origin main:origin/main

# Get changed group_vars files from last commit
ANSIBLE_PATH='^(ansible-azure-aad/group_vars/all/.*\.yml|ansible-azure-aad/.*\.yml)$'
ANSIBLE_GROUP_VARS_PATH='^ansible-azure-aad/group_vars/all/.*\.yml$'
ANSIBLE_PLAYBOOK_PATH='^ansible-azure-aad/[^/]+\.yml$'
TRIGGERED_PATHS='^(deployments/.*/.*/.*/core_aad/|deployments/.*/.*/.*/core_role_definition/|stacks/.*/aad/|stacks/.*/role_definition/|\.github/workflows/iam-apply\.yml|ansible-azure-aad/)'

ch_files=$(git diff --name-only HEAD^1..HEAD | grep -E "$TRIGGERED_PATHS" || true)
echo " ch_files:  $ch_files"

echo "aad_groups_changed=true" >> "$GITHUB_OUTPUT"
matrixArray=()
if echo "$ch_files" | grep -qvE "$ANSIBLE_PATH"; then
  echo "Non group_vars files detected → running ALL playbooks"
  mapfile -t matrixArray < <(find ./ansible-azure-aad/ -type f -name 'aad-*.yml' | sort)
else
  mapfile -t existing_playbooks < <(find ansible-azure-aad/ -type f -name 'aad-*.yml')
  
  for file in $(echo "$ch_files" | grep -E "$ANSIBLE_PLAYBOOK_PATH"); do
    if printf '%s\n' "${existing_playbooks[@]}" | grep -qx "$file"; then
      matrixArray+=("./$file")
    else
      echo "Skipping non-existing (deleted) playbook: $file"
    fi
  done
  for file in $(echo "$ch_files" | grep -E "$ANSIBLE_GROUP_VARS_PATH"); do
    echo "Checking changed groups in $file"

    # Get old version, extract + normalize aad_groups
    git show "HEAD~1:$file" 2>/dev/null | yq e '.aad_groups | sort_keys(..)' - > base.yaml || echo "{}" > base.yaml
    git show "HEAD:$file" 2>/dev/null | yq e '.aad_groups | sort_keys(..)' - > head.yaml || echo "{}" > head.yaml

    # Find groups that differ between old and new
    for group in $(cat <(yq e 'keys | .[]' base.yaml) <(yq e 'keys | .[]' head.yaml) | sort -u); do
      if [ "$(yq e ".\"$group\"" base.yaml)" != "$(yq e ".\"$group\"" head.yaml)" ]; then
        echo "  Changed group: $group"

        # Find playbooks that reference this group
        for playbook in ansible-azure-aad/aad-*.yml; do
          if yq e '.[]?.roles[]?.aad_groups_population_aad_group_name' "$playbook" | grep -qx "$group"; then
            matrixArray+=("./$playbook")
          fi
        done
      fi
    done
  done
  # Deduplicate only if matrixArray is non-empty
  if [ ${#matrixArray[@]} -eq 0 ]; then
    echo "No specific playbooks to run. Skipping deploy ansible"
    echo "aad_groups_changed=false" >> "$GITHUB_OUTPUT"
  else
    mapfile -t matrixArray < <(printf '%s\n' "${matrixArray[@]}" | sort -u)
  fi
fi

# Build and output matrix JSON
printf '%s\n' "${matrixArray[@]}" \
  | jq -R . \
  | jq -s 'map({filepath: ., name: (split("/") | last)})' > matrix.json

cat matrix.json

{
  echo "MATRIX<<EOF"
  cat matrix.json
  echo "EOF"
} >> "$GITHUB_OUTPUT"