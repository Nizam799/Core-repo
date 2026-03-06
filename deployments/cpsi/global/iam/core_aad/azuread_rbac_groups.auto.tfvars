/*
Role definition object IDs are NOT considered sensitive.
Scope generally has the subscription in them (unless you're specifying a management group), which we will replace tokens task via Azure DevOps pipeline. For example:
IDs will be replaced with the variable name to keep IDs from being stored in the tfvars file
- `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`
- `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`
- `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`
- `/providers/Microsoft.Management/managementGroups/myMG`
Principal ID is the object ID of a user, group, or service principal. These are NOT considered sensitive.
For management groups, the fully qualified name for the role definition ID should be:
- /providers/Microsoft.Authorization/roleDefinitions/{ROLE_DEFINITION_ID}
For subscriptions and resources, the fully qualified name for the role definition ID should be:
- /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Authorization/roleDefinitions/{ROLE_DEFINITION_ID}
Ensure that each KEY (for example, "Group1-Contributor") is UNIQUE. Otherwise, Terraform will only use one of them.
*/
azuread_rbac_groups = {
  /*
  Tennant Root Groups
*/
  "az-rbac-mgs-tenant-root-group-cost-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/72fafb9e-0641-4937-9268-a91bfd8191a3"
    scope              = "/providers/Microsoft.Management/managementGroups/65822a18-e4a3-4658-89cc-86edadc7bda5"
  }
  "az-rbac-mgs-tenant-root-group-network-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/e32146c3-2f4f-dcf5-b668-aeec2c25a4f6"
    scope              = "/providers/Microsoft.Management/managementGroups/65822a18-e4a3-4658-89cc-86edadc7bda5"
  }
  "az-rbac-mgs-tenant-root-group-security-admin" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/fb1c8493-542b-48eb-b624-b4c8fea62acd"
    scope              = "/providers/Microsoft.Management/managementGroups/65822a18-e4a3-4658-89cc-86edadc7bda5"
  }
  /*
Management Group Scopes
*/
  "az-rbac-mgs-brownfield-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/providers/Microsoft.Management/managementGroups/brownfield"
  }
  "az-rbac-mgs-tenant-brownfield-grh-cost-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/72fafb9e-0641-4937-9268-a91bfd8191a3"
    scope              = "/providers/Microsoft.Management/managementGroups/brownfield-grh"
  }
  "az-rbac-mgs-lz-contributor" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/providers/Microsoft.Management/managementGroups/lz"
  }
  "az-rbac-mgs-lz-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/providers/Microsoft.Management/managementGroups/lz"
  }
  "az-rbac-mgs-lz-virtual-machine-user-login" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/fb879df8-f326-4884-b1cf-06f3ad86be52"
    scope              = "/providers/Microsoft.Management/managementGroups/lz"
  }
  "az-rbac-mgs-lz-us-customer-aks-cluster-user" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/4abbcc35-e782-43d8-92c5-2d3f1bd2253f"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us-customer"
  }
  "az-rbac-mgs-lz-us-customer-aks-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/7f6c6a51-bcf8-42ba-9220-52d62157d7db"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us-customer"
  }
  "az-rbac-mgs-lz-us-customer-monitoring-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/43d0d8ad-25c7-4714-9337-8ba259a9fe05"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us-customer"
  }
  "az-rbac-mgs-lz-us-customer-npd-policy-trigger" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/3475c950-f00d-3e8e-70cc-ec6f9ec19468"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us-customer-npd"
  }
  "az-rbac-mgs-lz-us-customer-shd-contributor" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us-customer-shd"
  }
  "az-rbac-mgs-lz-us-customer-shd-cus-console-access" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/8a3083e8-9f87-f174-5a21-9d3957818deb"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us-customer-shd"
  }
  "az-rbac-mgs-lz-us-customer-shd-cus-vm-admin" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/f5be80a1-9bf6-9067-91a0-46c2496f9b8c"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us-customer-shd"
  }
  "az-rbac-mgs-lz-us-customer-shd-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us-customer-shd"
  }
  "az-rbac-mgs-lz-us-customer-shd-virtual-machine-user-login" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/fb879df8-f326-4884-b1cf-06f3ad86be52"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us-customer-shd"
  }
  "az-rbac-mgs-lz-us-customer-supp-contributor" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/cfd33db0-3dd1-45e3-aa9d-cdbdf3b6f24e"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us-customer"
  }
  "az-rbac-mgs-lz-us-decommissioned-monitoring-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/43d0d8ad-25c7-4714-9337-8ba259a9fe05"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us-decommissioned"
  }
  "az-rbac-mgs-sandbox-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/providers/Microsoft.Management/managementGroups/sandbox"
  }
  "az-rbac-mgs-sandbox-akv-admin" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/00482a5a-887f-4fb3-b363-3b7fe8e74483"
    scope              = "/providers/Microsoft.Management/managementGroups/sandbox"
  }
  "az-rbac-mgs-sandbox-us-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/providers/Microsoft.Management/managementGroups/sandbox-us"
  }
  "az-rbac-mgs-sandbox-us-customer-contributor" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/providers/Microsoft.Management/managementGroups/sandbox-us-customer"
  }
  "az-rbac-mgs-sandbox-us-customer-owner" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/8e3af657-a8ff-443c-a75c-2fe8c4bcb635"
    scope              = "/providers/Microsoft.Management/managementGroups/sandbox-us-customer"
  }
  "az-rbac-mgs-sandbox-us-customer-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/providers/Microsoft.Management/managementGroups/sandbox-us-customer"
  }
  "az-rbac-mgs-ssvcs-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/providers/Microsoft.Management/managementGroups/ssvcs"
  }
  "az-rbac-mgs-ssvcs-virtual-machine-user-login" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/fb879df8-f326-4884-b1cf-06f3ad86be52"
    scope              = "/providers/Microsoft.Management/managementGroups/ssvcs"
  }
  "az-rbac-mgs-ssvcs-us-hybrid-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/providers/Microsoft.Management/managementGroups/ssvcs-us-hybrid"
  }
  "az-rbac-mgs-ssvcs-us-hybrid-mgmt-shd-aks-cluster-user" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/4abbcc35-e782-43d8-92c5-2d3f1bd2253f"
    scope              = "/providers/Microsoft.Management/managementGroups/ssvcs-us-hybrid-mgmt-shd"
  }
  "az-rbac-mgs-ssvcs-us-hybrid-mgmt-shd-aks-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/7f6c6a51-bcf8-42ba-9220-52d62157d7db"
    scope              = "/providers/Microsoft.Management/managementGroups/ssvcs-us-hybrid-mgmt-shd"
  }
  "az-rbac-mgs-ssvcs-us-hybrid-mgmt-shd-seim-reader" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/8d289c81-5878-46d4-8554-54e1e3d8b5cb"
    scope              = "/providers/Microsoft.Management/managementGroups/ssvcs-us-hybrid-mgmt-shd"
  }
  "az-rbac-mgs-ssvcs-us-cust-contributor" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/providers/Microsoft.Management/managementGroups/ssvcs-us-cust"
  }
  "az-rbac-mgs-sandbox-virtual-machine-user-login" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/fb879df8-f326-4884-b1cf-06f3ad86be52"
    scope              = "/providers/Microsoft.Management/managementGroups/sandbox"
  }

  /*
Subscription Scopes
*/
  "az-rbac-subs-lz-us-customer-dev-001-adf-run" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/2fc3f7c5-0617-70cf-4fb6-99c01dfd4525"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0"
  }
  "az-rbac-subs-lz-us-customer-dev-001-reader" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0"
  }
  "az-rbac-subs-lz-us-customer-qa-001-reader" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa"
  }
  "az-rbac-subs-lz-us-customer-pd-001-adf-run" = {
    role_definition_id = "/subscriptions/1d5b2f0b-2ff7-404f-84ea-2d45697dd69d/providers/Microsoft.Authorization/roleDefinitions/2fc3f7c5-0617-70cf-4fb6-99c01dfd4525"
    scope              = "/subscriptions/1d5b2f0b-2ff7-404f-84ea-2d45697dd69d"
  }
  "az-rbac-subs-lz-us-customer-qa-001-adf-run" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/2fc3f7c5-0617-70cf-4fb6-99c01dfd4525"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa"
  }
  "az-rbac-subs-sandbox-us-customer-shd-001-user-access-admin" = {
    role_definition_id = "/subscriptions/0cd99a15-38a9-43dd-9f6d-42fd1a667f1a/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
    scope              = "/subscriptions/0cd99a15-38a9-43dd-9f6d-42fd1a667f1a"
  }
  "az-rbac-subs-ssvcs-us-hybrid-con-shd-001-contributor" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c"
  }
  "az-rbac-subs-ssvcs-us-hybrid-con-shd-001-reader" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c"
  }
  "az-rbac-subs-ssvcs-us-hybrid-idm-shd-001-contributor" = {
    role_definition_id = "/subscriptions/9c586c03-4a31-4147-925a-ddc27df6b2ea/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/9c586c03-4a31-4147-925a-ddc27df6b2ea"
  }
  "az-rbac-subs-ssvcs-us-hybrid-mgmt-shd-001-logic-contributor" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/87a39d53-fc1b-424a-814c-f7e04687dc9e"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1"
  }
  "az-rbac-subs-ssvcs-us-hybrid-mgmt-shd-001-seim-playbook-operator" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/51d6186e-6489-4900-b93f-92e23144cca5"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1"
  }
  "az-rbac-subs-ssvcs-us-hybrid-mgmt-shd-001-seim-responder" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/3e150937-b8fe-4cfb-8069-0eaf05ecd056"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1"
  }
  "az-rbac-subs-ssvcs-us-hybrid-mgmt-shd-001-template-spec-contributor" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/1c9b6475-caf0-4164-b5a1-2142a7116f4b"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1"
  }
  "az-rbac-subs-ssvcs-us-cust-mgmt-shd-001-owner" = {
    role_definition_id = "/subscriptions/b0ecc4c9-1b02-416f-bf06-afa618ec6bd3/providers/Microsoft.Authorization/roleDefinitions/8e3af657-a8ff-443c-a75c-2fe8c4bcb635"
    scope              = "/subscriptions/b0ecc4c9-1b02-416f-bf06-afa618ec6bd3"
  }

  /*
RG Scopes
*/

  "az-rbac-rg-rg-crp-los-app-dev-usea-001-akv-secrets-officer" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/b86a8fe4-44ce-4948-aee5-eccb2c155cd7"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-los-app-dev-usea-001"
  }
  "az-rbac-rg-rg-crp-los-app-dev-usea-001-stgblob-contributor" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-los-app-dev-usea-001"
  }
  "az-rbac-rg-rg-crp-los-app-pd-usea-001-akv-secrets-officer" = {
    role_definition_id = "/subscriptions/1d5b2f0b-2ff7-404f-84ea-2d45697dd69d/providers/Microsoft.Authorization/roleDefinitions/b86a8fe4-44ce-4948-aee5-eccb2c155cd7"
    scope              = "/subscriptions/1d5b2f0b-2ff7-404f-84ea-2d45697dd69d/resourceGroups/rg-crp-los-app-pd-usea-001"
  }
  "az-rbac-rg-rg-crp-los-app-pd-usea-001-stgblob-contributor" = {
    role_definition_id = "/subscriptions/1d5b2f0b-2ff7-404f-84ea-2d45697dd69d/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/1d5b2f0b-2ff7-404f-84ea-2d45697dd69d/resourceGroups/rg-crp-los-app-pd-usea-001"
  }
  "az-rbac-rg-rg-crp-los-app-qa-usea-001-akv-secrets-officer" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/b86a8fe4-44ce-4948-aee5-eccb2c155cd7"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-los-app-qa-usea-001"
  }
  "az-rbac-rg-rg-crp-los-app-qa-usea-001-stgblob-contributor" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-los-app-qa-usea-001"
  }
  "az-rbac-rg-rg-crp-los-app-stg-usea-001-akv-secrets-officer" = {
    role_definition_id = "/subscriptions/ca9a6240-61ee-429f-be2f-f1058b4e551c/providers/Microsoft.Authorization/roleDefinitions/b86a8fe4-44ce-4948-aee5-eccb2c155cd7"
    scope              = "/subscriptions/ca9a6240-61ee-429f-be2f-f1058b4e551c/resourceGroups/rg-crp-los-app-stg-usea-001"
  }
  "az-rbac-rg-rg-crp-los-app-stg-usea-001-stgblob-contributor" = {
    role_definition_id = "/subscriptions/ca9a6240-61ee-429f-be2f-f1058b4e551c/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/ca9a6240-61ee-429f-be2f-f1058b4e551c/resourceGroups/rg-crp-los-app-stg-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-dbt-dev-usea-001-cus-mdp-container-contributor" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/cbca9961-bc05-bb89-308c-8195f346632f"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-dbt-dev-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-data-dev-usea-001-hub-virtual-machine-user-login" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/fb879df8-f326-4884-b1cf-06f3ad86be52"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-data-dev-usea-001-hub"
  }
  "az-rbac-rg-rg-crp-mdp-data-dev-usea-001-user-access-admin" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-data-dev-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-data-dev-usea-001-stgblob-reader" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/2a2b9908-6ea1-4ae2-8e65-a410df84e7d1"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-data-dev-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-dbt-dev-usea-001-user-access-admin" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-dbt-dev-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-ingest-dev-usea-001-adf-contributor" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/673868aa-7521-48a0-acc6-0f60742d39f5"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-ingest-dev-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-ingest-dev-usea-001-user-access-admin" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-ingest-dev-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-ingest-dev-usea-001-cus-mdp-adf-integration" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/a6d53df9-c3b5-62c0-5f7b-5c48bce65ee9"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-ingest-dev-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-ingest-qa-usea-001-adf-contributor" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/673868aa-7521-48a0-acc6-0f60742d39f5"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-mdp-ingest-qa-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-shdsvc-dev-usea-001-akv-reader" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/21090545-7ca7-4776-b22c-e363652d74d2"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-shdsvc-dev-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-shdsvc-dev-usea-001-user-access-admin" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-shdsvc-dev-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-data-pd-usea-001-hub-virtual-machine-user-login" = {
    role_definition_id = "/subscriptions/1d5b2f0b-2ff7-404f-84ea-2d45697dd69d/providers/Microsoft.Authorization/roleDefinitions/fb879df8-f326-4884-b1cf-06f3ad86be52"
    scope              = "/subscriptions/1d5b2f0b-2ff7-404f-84ea-2d45697dd69d/resourceGroups/rg-crp-mdp-data-pd-usea-001-hub"
  }
  "az-rbac-rg-rg-crp-mdp-data-qa-usea-001-hub-virtual-machine-user-login" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/fb879df8-f326-4884-b1cf-06f3ad86be52"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-mdp-data-qa-usea-001-hub"
  }
  "az-rbac-rg-rg-crp-mdp-data-qa-usea-001-user-access-admin" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-mdp-data-qa-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-data-qa-usea-001-stgblob-reader" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/2a2b9908-6ea1-4ae2-8e65-a410df84e7d1"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-mdp-data-qa-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-dbt-qa-usea-001-user-access-admin" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-mdp-dbt-qa-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-ingest-qa-usea-001-user-access-admin" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-mdp-ingest-qa-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-ingest-qa-usea-001-cus-mdp-adf-integration" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/a6d53df9-c3b5-62c0-5f7b-5c48bce65ee9"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-mdp-ingest-qa-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-shdsvc-qa-usea-001-akv-reader" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/21090545-7ca7-4776-b22c-e363652d74d2"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-mdp-shdsvc-qa-usea-001"
  }
  "az-rbac-rg-rg-crp-mdp-shdsvc-qa-usea-001-user-access-admin" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-mdp-shdsvc-qa-usea-001"
  }
  "az-rbac-rg-rg-ptcare-dax-cog-pd-usea-001-contributor" = {
    role_definition_id = "/subscriptions/e1d91336-69bc-4c65-a84c-25175cdba347/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/e1d91336-69bc-4c65-a84c-25175cdba347/resourceGroups/rg-ptcare-dax-cog-pd-usea-001"
  }
  "az-rbac-rg-rg-ptcare-dmo-cog-pd-usea-001-contributor" = {
    role_definition_id = "/subscriptions/e1d91336-69bc-4c65-a84c-25175cdba347/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/e1d91336-69bc-4c65-a84c-25175cdba347/resourceGroups/rg-ptcare-dmo-cog-pd-usea-001"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-usea-001-bcdr-cus-prvt-dns-reader" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/cee6a51c-623a-f43a-09b6-f9bde4f5e0a0"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-usea-001-bcdr"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-usea-001-comp-cus-prvt-dns-reader" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/cee6a51c-623a-f43a-09b6-f9bde4f5e0a0"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-usea-001-comp"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-usea-001-data-cus-prvt-dns-reader" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/cee6a51c-623a-f43a-09b6-f9bde4f5e0a0"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-usea-001-data"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-usea-001-dvps-cus-prvt-dns-reader" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/cee6a51c-623a-f43a-09b6-f9bde4f5e0a0"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-usea-001-dvps"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-usea-001-secm-cus-prvt-dns-reader" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/cee6a51c-623a-f43a-09b6-f9bde4f5e0a0"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-usea-001-secm"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-uswe-001-bcdr-cus-prvt-dns-reader" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/cee6a51c-623a-f43a-09b6-f9bde4f5e0a0"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-uswe-001-bcdr"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-uswe-001-comp-cus-prvt-dns-reader" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/cee6a51c-623a-f43a-09b6-f9bde4f5e0a0"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-uswe-001-comp"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-uswe-001-dvps-cus-prvt-dns-reader" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/cee6a51c-623a-f43a-09b6-f9bde4f5e0a0"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-uswe-001-dvps"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-usea-001-bcdr-prvt-dns-contributor" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b12aa53e-6015-4669-85d0-8515ebb3ae7f"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-usea-001-bcdr"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-usea-001-comp-prvt-dns-contributor" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b12aa53e-6015-4669-85d0-8515ebb3ae7f"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-usea-001-comp"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-usea-001-data-prvt-dns-contributor" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b12aa53e-6015-4669-85d0-8515ebb3ae7f"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-usea-001-data"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-usea-001-dvps-prvt-dns-contributor" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b12aa53e-6015-4669-85d0-8515ebb3ae7f"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-usea-001-dvps"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-usea-001-secm-prvt-dns-contributor" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b12aa53e-6015-4669-85d0-8515ebb3ae7f"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-usea-001-secm"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-uswe-001-bcdr-prvt-dns-contributor" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b12aa53e-6015-4669-85d0-8515ebb3ae7f"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-uswe-001-bcdr"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-uswe-001-comp-prvt-dns-contributor" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b12aa53e-6015-4669-85d0-8515ebb3ae7f"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-uswe-001-comp"
  }
  "az-rbac-rg-rg-crp-shdsvc-dns-shd-uswe-001-dvps-prvt-dns-contributor" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b12aa53e-6015-4669-85d0-8515ebb3ae7f"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/resourceGroups/rg-crp-shdsvc-dns-shd-uswe-001-dvps"
  }
  "az-rbac-rg-rg-crp-shdsvc-mgmt-shd-usea-001-jump-vm-admin-login" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/1c0163c0-47e6-4577-8991-ea5c82e286e4"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/resourceGroups/rg-crp-shdsvc-mgmt-shd-usea-001-jump"
  }
  "az-rbac-rg-rg-crp-shdsvc-mgmt-shd-uswe-001-jump-vm-admin-login" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/1c0163c0-47e6-4577-8991-ea5c82e286e4"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/resourceGroups/rg-crp-shdsvc-mgmt-shd-uswe-001-jump"
  }
}
