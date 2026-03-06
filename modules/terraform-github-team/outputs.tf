output "github_team_id" {
  description = "A key value pair of the ID of the created team."
  value       = { for key, value in github_team.team : key => value.id }
}

output "github_team_node_id" {
  description = "A key value pair of the Node ID of the created team."
  value       = { for key, value in github_team.team : key => value.node_id }
}

output "github_team_slug" {
  description = "A key value pair of the slug of the created team, which may or may not differ from name, depending on whether name contains URL-unsafe characters. Useful when referencing the team in github_branch_protection."
  value       = { for key, value in github_team.team : key => value.slug }
}

output "github_teams_to_be_created" {
  description = "GitHub teams and their members derived from Ansible YAML"
  value = {
    for team, team_data in local.github_groups :
    team => sort([for m in lookup(team_data, "members", []) : m.username])
  }
}

output "github_team_membership_summary" {
  value = {
    for team, team_data in local.github_groups :
    team => {
      member_count = length(lookup(team_data, "members", []))
      members      = sort([for m in lookup(team_data, "members", []) : m.username])
    }
  }
}
