output "azuread_groups_object_ids" {
  value       = module.azuread_groups.azuread_groups_object_ids
  description = "A key-value pair of outputs for the Azure Active Directory group's name and it's ID"
}

output "azuread_rbac_groups_object_ids" {
  value       = module.azuread_groups.azuread_rbac_groups_object_ids
  description = "A key-value pair of outputs for the Azure Active Directory group's name and it's ID"
}

output "azuread_directory_groups_object_ids" {
  value       = module.azuread_groups.azuread_directory_groups_object_ids
  description = "A key-value pair of outputs for the Azure Active Directory group's name and it's ID"
}

output "role_assignment_rbac_group_ids" {
  value       = module.azuread_groups.role_assignment_rbac_group_ids
  description = "A key-value pair of outputs for the role assignment IDs"
}

output "role_assignment_rbac_group_principal_type" {
  value       = module.azuread_groups.role_assignment_rbac_group_principal_type
  description = "A key-value pair of outputs for the role assignment principal type"
}

output "role_assignment_spn_principal_type" {
  value       = module.azuread_groups.role_assignment_spn_principal_type
  description = "A key-value pair of outputs for the role assignment principal type"
}