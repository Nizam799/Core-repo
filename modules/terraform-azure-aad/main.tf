resource "azuread_group" "groups" {
  for_each                = toset(var.azuread_groups)
  display_name            = each.value
  mail_enabled            = false
  prevent_duplicate_names = true
  security_enabled        = var.security_enabled
  assignable_to_role      = false
}

resource "azuread_group" "rbac_groups" {
  for_each                = var.azuread_rbac_groups
  display_name            = each.key
  mail_enabled            = false
  prevent_duplicate_names = true
  security_enabled        = var.security_enabled
  assignable_to_role      = false
}

resource "azurerm_role_assignment" "rbac_groups" {
  for_each           = var.azuread_rbac_groups
  scope              = each.value.scope
  role_definition_id = each.value.role_definition_id
  principal_id       = azuread_group.rbac_groups[each.key].id
}

resource "azuread_group" "directory_groups" {
  for_each                = var.azuread_directory_groups
  display_name            = each.key
  mail_enabled            = false
  prevent_duplicate_names = true
  security_enabled        = var.security_enabled
  assignable_to_role      = true
}

resource "azuread_directory_role_assignment" "directory_groups" {
  for_each            = var.azuread_directory_groups
  role_id             = each.value.role_id
  directory_scope_id  = each.value.directory_scope_id != null ? format("/%s", each.value.directory_scope_id) : null
  principal_object_id = azuread_group.directory_groups[each.key].id
}

resource "azuread_group" "pim_directory_groups" {
  for_each                = toset(var.azuread_pim_directory_groups)
  display_name            = each.key
  mail_enabled            = false
  prevent_duplicate_names = true
  security_enabled        = var.security_enabled
  assignable_to_role      = true
}

resource "azurerm_role_assignment" "service_principals" {
  for_each           = var.spn_role_assignments
  scope              = each.value.scope
  role_definition_id = each.value.role_definition_id
  principal_id       = each.value.principal_id
}
