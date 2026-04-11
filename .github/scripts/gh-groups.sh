#!/bin/bash

set -euo pipefail

ANSIBLE_PATH='^ansible-azure-aad/group_vars/all/.*\.yml$'
TRIGGERED_PATHS='^(deployments/cpsi/global/iam/core_github_team/|\.github/workflows/gh-team-pr\.yml|\.github/workflows/gh-team-apply\.yml|modules/terraform-github-team/terraform-github-team|stacks/iam/github_team/|ansible-azure-aad/group_vars/all/.*\.yml$)'

git fetch origin main:origin/main

[[ "$MODE" == "PR" ]] && DIFF_RANGE="origin/main..HEAD" BASE_REF="origin/main"
[[ "$MODE" == "MAIN" ]] && DIFF_RANGE="HEAD^1..HEAD" BASE_REF="HEAD~1"

relevant_files=$(git diff --name-only "$DIFF_RANGE" | grep -E "$TRIGGERED_PATHS" || true)

if echo "$relevant_files" | grep -qvE "$ANSIBLE_PATH"; then
  echo "only_ansible=false" >> "$GITHUB_OUTPUT"
  echo "gh_groups_changed=false" >> "$GITHUB_OUTPUT"
  exit 0
fi

echo "only_ansible=true" >> "$GITHUB_OUTPUT"

for file in $relevant_files; do
  git show "$BASE_REF:$file" 2>/dev/null | yq e '.gh_groups | sort_keys(..)' - > base.yaml || echo "{}" > base.yaml
  yq e '.gh_groups | sort_keys(..)' "$file" > head.yaml
  if ! diff -q base.yaml head.yaml > /dev/null; then
    echo "gh_groups_changed=true" >> "$GITHUB_OUTPUT"
    exit 0
  fi
done

echo "gh_groups_changed=false" >> "$GITHUB_OUTPUT"
