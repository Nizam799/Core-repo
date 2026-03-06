output "role_definition_id" {
  description = "A key value pair of role definition IDs"
  value       = { for key, value in azurerm_role_definition.this : key => value.role_definition_id }
}
