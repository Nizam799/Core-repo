variable "azuread_groups" {
  description = "A key-value pair of Azure Active Directory groups to create."
  type        = list(string)
  default     = []
}

variable "azuread_rbac_groups" {
  description = "A key-value pair of Azure Active Directory RBAC groups to create."
  type = map(object({
    role_definition_id = string
    scope              = string
  }))
  default = {}
}

variable "azuread_directory_groups" {
  description = "A key-value pair of Azure Active Directory Directory groups to create."
  type = map(object({
    role_id            = string
    directory_scope_id = optional(string)
  }))
  default = {}
}

variable "azuread_pim_directory_groups" {
  description = "A key-value pair of Azure Active Directory PIM groups to create."
  type        = list(string)
  default     = []
}

variable "spn_role_assignments" {
  description = "A key-value pair of role assignments to create."
  type = map(object({
    scope              = string # The scope at which the role assignment applies to
    role_definition_id = string # The Scoped-ID of the Role Definition. Changing this forces a new resource to be created.
    principal_id       = string # The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created.
  }))
  default = {}
}

variable "security_enabled" {
  description = "This controls whether the group created is a security group for controlling access to in-app resources. We are forcing this to be true for all Azure Active Directory groups."
  type        = bool
  default     = true
}
