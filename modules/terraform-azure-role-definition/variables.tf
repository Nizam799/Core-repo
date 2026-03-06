variable "role_definitions" {
  description = "A key value pair mapping of role definitions to create"
  type = map(object({
    name             = string       # The name of the Role Definition. Changing this forces a new resource to be created
    description      = string       # A description of the Role Definition
    scope            = string       # This value should be the name of the management group, or the ID. No need to provide /providers/Microsoft.Management/managementGroups/
    actions          = list(string) # One or more Allowed Actions, such as *, Microsoft.Resources/subscriptions/resourceGroups/read. See https://learn.microsoft.com/en-us/azure/role-based-access-control/resource-provider-operations for details
    data_actions     = list(string) # One or more Allowed Data Actions, such as *, Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read. See https://learn.microsoft.com/en-us/azure/role-based-access-control/resource-provider-operations for details
    not_actions      = list(string) # One or more Disallowed Actions, such as *, Microsoft.Resources/subscriptions/resourceGroups/read. See https://learn.microsoft.com/en-us/azure/role-based-access-control/resource-provider-operations for details
    not_data_actions = list(string) # One or more Disallowed Data Actions, such as *, Microsoft.Resources/subscriptions/resourceGroups/read. See https://learn.microsoft.com/en-us/azure/role-based-access-control/resource-provider-operations for details.
  }))
}
