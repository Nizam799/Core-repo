#!/bin/bash

set -e
IFS=$'\n'

git fetch origin main:origin/main
relevant_paths_regex='^(deployments/cpsi/global/iam/core_aad/|deployments/cpsi/global/iam/core_role_definition/|stacks/.*/aad/|stacks/.*/role_definition/|\.github/workflows/iam-apply\.yml|ansible-azure-aad/.*)'

trifiles=$(git diff --name-only HEAD^1..HEAD)
echo "Running Main Apply Workflow"

echo "Changed files:"
echo "$trifiles"

relevant_files=$(echo "$trifiles" | grep -E "$relevant_paths_regex" || true)

echo "Relevant files:"
echo "$relevant_files"

ch_files=$(echo "$relevant_files" | grep '^ansible-azure-aad/group_vars/all/.*\.yml$' || true)
echo "ch_files:"
echo "$ch_files"

for file in $ch_files; do
 echo "Checking aad_groups diff for $file"
 git show "HEAD~1:$file" > base.yaml 2>/dev/null || echo "{}" > base.yaml
 cat "$file" > head.yaml

 yq e '.aad_groups' base.yaml > base_aad.yaml
 yq e '.aad_groups' head.yaml > head_aad.yaml

 yq e -P 'sort_keys(..)' base_aad.yaml > base_norm.yaml
 yq e -P 'sort_keys(..)' head_aad.yaml > head_norm.yaml

 if ! diff -q base_norm.yaml head_norm.yaml >/dev/null; then
  for group in $(yq e '.aad_groups | keys | .[]' head_norm.yaml); do
   base_block=$(yq e ".aad_groups.\"$group\"" base_norm.yaml)
   head_block=$(yq e ".aad_groups.\"$group\"" head_norm.yaml)

   if [ "$base_block" != "$head_block" ]; then
     echo "Changed group: $group"
   fi
  done
  matrixArray=()

  for group in "${changed_groups[@]}"; do
    for file in ansible-azure-aad/*.yml; do
      found=$(yq e ".[]?.roles[]? | select(.aad_groups_population_aad_group_name == \"$group\")" "$file")

      if [ -n "$found" ]; then
        matrixArray+=("$file")
      fi
    done
  done
 fi
done
# matrixArray=($(find ./ansible-azure-aad/ -type f -name 'aad-*.yml' | sort))
echo "$matrixArray"
# Create an array of objects: [{ "filepath": "...", "name": "aad-xxx.yml" }, ...]
printf '%s\n' "${matrixArray[@]}" \
  | jq -R . \
  | jq -s 'map({filepath: ., name: (split("/") | last)})' > matrix.json

cat matrix.json

{
  echo "MATRIX<<EOF"
  cat matrix.json
  echo "EOF"
} >> "$GITHUB_OUTPUT"