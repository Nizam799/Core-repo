terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

resource "github_team" "team" {
  for_each = local.github_groups

  name        = each.key
  description = lookup(each.value, "description", "Managed via Ansible group_vars")
  privacy     = lookup(each.value, "privacy", "closed")
}

resource "github_team_membership" "member" {
  for_each = local.flattened_team_members

  team_id  = github_team.team[each.value.team_name].id
  username = each.value.username
  role     = each.value.role
}
