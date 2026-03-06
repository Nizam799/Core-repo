module "azuread_groups" {
  source                       = "../../../modules/terraform-azure-aad"
  azuread_groups               = var.azuread_groups
  azuread_rbac_groups          = var.azuread_rbac_groups
  azuread_directory_groups     = var.azuread_directory_groups
  azuread_pim_directory_groups = var.azuread_pim_directory_groups
  spn_role_assignments         = var.spn_role_assignments
  security_enabled             = var.security_enabled
}
