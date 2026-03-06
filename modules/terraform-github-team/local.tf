locals {
  ansible_group_vars_dir = "${path.module}/../../ansible-azure-aad/group_vars/all"

  ansible_yaml_files = fileset(local.ansible_group_vars_dir, "*.yml")

  decoded_yaml_files = [
    for file_name in local.ansible_yaml_files :
    yamldecode(file("${local.ansible_group_vars_dir}/${file_name}"))
  ]
}

locals {
  github_groups = merge([
    for yaml in local.decoded_yaml_files :
    lookup(yaml, "gh_groups", {})
  ]...)
}

locals {
  flattened_team_members = {
    for pair in flatten([
      for team_name, team_data in local.github_groups : [
        for member in lookup(team_data, "members", []) : {
          key       = "${team_name}-${member.username}"
          team_name = team_name
          username  = member.username
          role      = member.role
        }
      ]
    ]) : pair.key => pair
  }
}

locals {
  all_team_names = flatten([
    for yaml in local.decoded_yaml_files :
    keys(lookup(yaml, "gh_groups", {}))
  ])
}

locals {
  duplicate_teams = [
    for t in local.all_team_names :
    t if length([for x in local.all_team_names : x if x == t]) > 1
  ]
}

terraform {
  required_version = ">= 1.3"
}

check "duplicate_github_teams" {
  assert {
    condition     = length(local.duplicate_teams) == 0
    error_message = "Duplicate GitHub teams found: ${join(", ", local.duplicate_teams)}"
  }
}
