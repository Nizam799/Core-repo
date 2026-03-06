resource "azurerm_role_definition" "this" {
  for_each          = var.role_definitions
  scope             = "/providers/Microsoft.Management/managementGroups/${each.value.scope}"
  assignable_scopes = ["/providers/Microsoft.Management/managementGroups/${each.value.scope}"]
  name              = each.value.name
  description       = each.value.description

  permissions {
    actions          = each.value.actions
    data_actions     = each.value.data_actions
    not_actions      = each.value.not_actions
    not_data_actions = each.value.not_data_actions
  }
}
