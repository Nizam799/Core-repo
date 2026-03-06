output "azuread_groups_object_ids" {
  value       = { for key, value in azuread_group.groups : key => value.id }
  description = "A key-value pair of outputs for the Azure Active Directory group's name and it's ID"
}

output "azuread_rbac_groups_object_ids" {
  value       = { for key, value in azuread_group.rbac_groups : key => value.id }
  description = "A key-value pair of outputs for the Azure Active Directory group's name and it's ID"
}

output "azuread_directory_groups_object_ids" {
  value       = { for key, value in azuread_group.directory_groups : key => value.id }
  description = "A key-value pair of outputs for the Azure Active Directory group's name and it's ID"
}

output "role_assignment_rbac_group_ids" {
  value       = { for key, value in azurerm_role_assignment.rbac_groups : key => value.id }
  description = "A key-value pair of outputs for the role assignment IDs"
}

output "role_assignment_rbac_group_principal_type" {
  value       = { for key, value in azurerm_role_assignment.rbac_groups : key => value.principal_type }
  description = "A key-value pair of outputs for the role assignment principal type"
}

output "role_assignment_spn_principal_type" {
  value       = { for key, value in azurerm_role_assignment.service_principals : key => value.principal_type }
  description = "A key-value pair of outputs for the role assignment principal type"
}
