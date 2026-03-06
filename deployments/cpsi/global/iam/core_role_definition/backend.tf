terraform {
  backend "azurerm" {
    resource_group_name  = "rg-crp-shdsvc-dvo-shd-usea-001"
    storage_account_name = "stcrpshdsvcdvoshdusea001"
    container_name       = "iam"
    key                  = "terraform-azure-stack-role-definition.tfstate"
    use_azuread_auth     = true
    use_oidc             = true
  }
}