# Terraform Azure Stack AAD

## General Information

This stack deploys the following items:

1. Creating persona Azure AD groups
    - az-grp-xxx
2. Creating Azure AD RBAC groups and assigning RBAC permissions
    - az-rbac-xxx
3. Creating Azure AD Directory Groups and assigning Directory permissions
    - aad-rbac-xxx
4. Creating *PIM* based Azure AD Directory groups (groups with 0 assigned permissions)
5. Direct assigning of permissions to resources, such as Service Principals

## TFVARS Files
- `azuread_directory_groups.auto.tfvars` handles Azure AD Directory groups and assigning directory permissions
- `azuread_groups.auto.tfvars` handles Azure AD persona groups 
- `azuread_pim_directory_groups.auto.tfvars` handles Azure AD Directory groups with 0 assigned permissions
- `azuread_rbac_groups.auto.tfvars` handles Azure AD Directory RBAC groups and assigning RBAC permissions
- `azuread_spn_role_assignments.auto.tfvars` handles direct role assignments for things like service principals

## AzureAD Directory Groups Inputs
In order to create AzureAD directory groups, append onto the `azuread_directory_groups` variable in `azuread_directory_groups.auto.tfvars`.

The KEY will be the name of the AzureAD directory group (in this case, "aad-rbac-global-reader"). Pass in proper `role_id` for the directory role you want to assign this group.

For example:

```
azuread_directory_groups = {
  "aad-rbac-global-reader" = {
    role_id = "4a5d8f65-41da-4de4-8968-e035b65339cf"
  }
```

## AzureAD Persona Groups
In order to create AzureAD persona groups, append onto the `azuread_groups` variable in `azuread_groups.auto.tfvars`. Pass in the name of the persona group you want to create.

For example:

```
azuread_groups = [
  "az-grp-aht-appsupp-all"
]
```

## AzureAD PIM Directory Groups (temporary)
In order to create AzureAD PIM Directory groups, append onto the `azuread_pim_directory_groups` variable in `azuread_pim_directory_groups.auto.tfvars`. Pass in the name of the directory groups you want to create.

For example:

```
azuread_pim_directory_groups = [
  "aad-rbac-global-admin"
]
```

## AzureAD RBAC Groups
In order to create AzureAD RBAC groups, append onto the `azuread_rbac_groups` variable in `azuread_rbac_groups.auto.tfvars`.Pass in the `role_definition_id` and `scope` that the RBAC permission should apply to.

For example:

```
azuread_rbac_groups = {
  "az-rbac-mgs-tenant-root-group-cost-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/72fafb9e-0641-4937-9268-a91bfd8191a3"
    scope              = "/providers/Microsoft.Management/managementGroups/__TRG__"
    }
}
```

## SPN Role Assignments
In order to create service principal role assignments, append onto the  `azuread_spn_role_assignments` variable in `azuread_spn_role_assignments.auto.tfvars`. Pass in the `role_definition_id`, `scope`, and `principal_id`

For example:
```
spn_role_assignments = {
  "spn-xxx-xx-xx-xxxxxxxxx-xxx-xxx-_Storage Blob Data Contributor" = {
    role_definition_id = "/subscriptions/xxxxxxxxxxxxxx/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/xxxxxxxxxxxxx/resourceGroups/rg-crp-shdsvc-dvps-dev-usea-001/providers/Microsoft.Storage/storageAccounts/xxxxxxxxxxxx"
    principal_id       = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  }
}
```
