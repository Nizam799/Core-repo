module "role_definition" {
  source           = "../../../modules/terraform-azure-role-definition"
  role_definitions = var.role_definitions
}
