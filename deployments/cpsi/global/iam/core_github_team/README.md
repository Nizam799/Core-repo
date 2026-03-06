## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.19.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_github_team"></a> [github\_team](#module\_github\_team) | ../../../../../stacks/iam/github_team | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_teams"></a> [github\_teams](#input\_github\_teams) | A key value pair mapping of github teams to create | <pre>map(object({<br>    name                      = string                 # The name of the team.<br>    description               = string                 # A description of the team.<br>    privacy                   = string                 # The level of privacy for the team. Must be one of secret or closed. Defaults to secret.<br>    parent_team_id            = optional(list(string)) # The ID or slug of the parent team, if this is a nested team.<br>    ldap_dn                   = optional(string)       # The LDAP Distinguished Name of the group where membership will be synchronized. Only available in GitHub Enterprise Server.<br>    create_default_maintainer = optional(string)       # Adds a default maintainer to the team. Defaults to false and adds the creating user to the team when true.<br>  }))</pre> | n/a | yes |
| <a name="input_team_members"></a> [team\_members](#input\_team\_members) | A key value pair mapping to add/remove users from teams | <pre>map(list(object({<br>    username = string<br>    role     = string # member | maintainer<br>  })))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_github_team_id"></a> [github\_team\_id](#output\_github\_team\_id) | A key value pair of the ID of the created team. |
| <a name="output_github_team_node_id"></a> [github\_team\_node\_id](#output\_github\_team\_node\_id) | A key value pair of the Node ID of the created team. |
| <a name="output_github_team_slug"></a> [github\_team\_slug](#output\_github\_team\_slug) | A key value pair of the slug of the created team, which may or may not differ from name, depending on whether name contains URL-unsafe characters. Useful when referencing the team in github\_branch\_protection. |
