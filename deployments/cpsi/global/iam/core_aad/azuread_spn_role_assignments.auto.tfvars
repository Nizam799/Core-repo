spn_role_assignments = {
  /*  Resource Scopes
Names will be SPN/MI_roleName_resource
*/

  "spn-repo-cpsiscorp-github-core-repositories-reader_Storage Blob Data Contributor_stcrpshdsvcdvoshdusea001" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/resourceGroups/rg-crp-shdsvc-dvo-shd-usea-001/providers/Microsoft.Storage/storageAccounts/stcrpshdsvcdvoshdusea001"
    principal_id       = "01bf4beb-dfcc-4bf8-812d-d2325fe41eca" //enterprise application object ID
  }
  "spn-subs-lz-us-cpsicorp-dev-001-data-platform-security_Storage Blob Data Contributor_stcrpshddvpsdevusea001" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-shdsvc-dvps-dev-usea-001/providers/Microsoft.Storage/storageAccounts/stcrpshddvpsdevusea001"
    principal_id       = "fe366c65-1be2-4008-8f56-7aa7b17ada26" //enterprise application object ID
  }
  "spn-subs-lz-us-cpsicorp-dev-001-mdp-secrets_Storage Blob Data Contributor_stcrpshddvpsdevusea001" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-shdsvc-dvps-dev-usea-001/providers/Microsoft.Storage/storageAccounts/stcrpshddvpsdevusea001"
    principal_id       = "1ffb7d4f-f777-4d49-aceb-0e80fda86752" //enterprise application object ID
  }
  "spn-subs-lz-us-cpsicorp-dev-001-mdp-secrets_Key Vault Secrets Officer_kvcrpmdpsecmdevusea001" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/b86a8fe4-44ce-4948-aee5-eccb2c155cd7"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-shdsvc-dev-usea-001/providers/Microsoft.KeyVault/vaults/kvcrpmdpsecmdevusea001"
    principal_id       = "1ffb7d4f-f777-4d49-aceb-0e80fda86752" //enterprise application object ID
  }
  "spn-subs-lz-us-cpsicorp-dev-001-mdp-secrets_Storage Account Key Operator Service Role_stcrpmdpdatadevusea001" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/81a9662b-bebf-436f-a333-f67b29880f12"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-mdp-data-dev-usea-001/providers/Microsoft.Storage/storageAccounts/stcrpmdpdatadevusea001"
    principal_id       = "1ffb7d4f-f777-4d49-aceb-0e80fda86752" //enterprise application object ID
  }
  "spn-subs-lz-us-cpsicorp-dev-001-mdp-secrets_Storage Blob Data Contributor_stcrpshddvpsdevusea001" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/resourceGroups/rg-crp-shdsvc-dvps-dev-usea-001/providers/Microsoft.Storage/storageAccounts/stcrpshddvpsdevusea001"
    principal_id       = "1ffb7d4f-f777-4d49-aceb-0e80fda86752" //enterprise application object ID
  }
  "spn-subs-lz-us-cpsicorp-qa-001-mdp-secrets_Key Vault Secrets Officer_kvcrpmdpsecmqausea001" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/b86a8fe4-44ce-4948-aee5-eccb2c155cd7"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-mdp-shdsvc-qa-usea-001/providers/Microsoft.KeyVault/vaults/kvcrpmdpsecmqausea001"
    principal_id       = "4f9e3f5d-ddd6-467e-9975-a99182540d7f"
  }
  "spn-subs-lz-us-cpsicorp-qa-001-mdp-secrets_Storage Account Key Operator Service Role_stcrpmdpdataqausea001" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/81a9662b-bebf-436f-a333-f67b29880f12"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-mdp-data-qa-usea-001/providers/Microsoft.Storage/storageAccounts/stcrpmdpdataqausea001"
    principal_id       = "4f9e3f5d-ddd6-467e-9975-a99182540d7f"
  }
  "spn-subs-lz-us-cpsicorp-qa-001-mdp-secrets_Storage Blob Data Contributor_stcrpshddvpsqausea001" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-shdsvc-dvps-qa-usea-001/providers/Microsoft.Storage/storageAccounts/stcrpshddvpsqausea001"
    principal_id       = "4f9e3f5d-ddd6-467e-9975-a99182540d7f"
  }
  "spn-subs-lz-us-cpsicorp-qa-001-data-platform-security_Storage Blob Data Contributor_stcrpshddvpsqausea001" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourceGroups/rg-crp-shdsvc-dvps-qa-usea-001/providers/Microsoft.Storage/storageAccounts/stcrpshddvpsqausea001"
    principal_id       = "ade02501-0a2c-4cb8-8fc5-70fa91348270" //enterprise application object ID
  }
  //// Aviatrix specific ////
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Storage Blob Data Contributor_stcrpshdsvcdvoshdusea001" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/resourceGroups/rg-crp-shdsvc-dvo-shd-usea-001/providers/Microsoft.Storage/storageAccounts/stcrpshdsvcdvoshdusea001/blobServices/default/containers/ssvcs-us-cpsicorp-con"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_ssvcs-us-cpsicorp-con-shd-001" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_User-Access-Admin_ssvcs-us-cpsicorp-con-shd-001" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_ssvcs-us-cpsicorp-idm-shd-001" = {
    role_definition_id = "/subscriptions/9c586c03-4a31-4147-925a-ddc27df6b2ea/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/9c586c03-4a31-4147-925a-ddc27df6b2ea"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_ssvcs-us-cpsicorp-mgmt-shd-001" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_ssvcs-us-cust-mgmt-shd-001" = {
    role_definition_id = "/subscriptions/b0ecc4c9-1b02-416f-bf06-afa618ec6bd3/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/b0ecc4c9-1b02-416f-bf06-afa618ec6bd3"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_ssvcs-us-cust-con-shd-001" = {
    role_definition_id = "/subscriptions/31750882-9746-4385-aaf7-993435bc3960/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/31750882-9746-4385-aaf7-993435bc3960"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_ssvcs-us-cust-idm-shd-001" = {
    role_definition_id = "/subscriptions/ab7edff2-0fac-432e-aa96-d051a6207af7/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/ab7edff2-0fac-432e-aa96-d051a6207af7"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_lz-us-cust-trubridge-shd-001" = {
    role_definition_id = "/subscriptions/07a72e75-2a1b-41c4-b9ca-0e854f2b3ac9/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/07a72e75-2a1b-41c4-b9ca-0e854f2b3ac9"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_lz-us-cust-trubridge-shd-002" = {
    role_definition_id = "/subscriptions/71834df1-7ca2-4bec-b18c-6c0e7ef170ab/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/71834df1-7ca2-4bec-b18c-6c0e7ef170ab"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_lz-us-cust-trubridge-shd-003" = {
    role_definition_id = "/subscriptions/fd8a1d3a-ba2c-480b-b6d2-6c2d72fae21e/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/fd8a1d3a-ba2c-480b-b6d2-6c2d72fae21e"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_lz-us-cust-trubridge-shd-004" = {
    role_definition_id = "/subscriptions/2f673634-d509-4287-ba62-402a7373b912/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/2f673634-d509-4287-ba62-402a7373b912"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_lz-us-cust-trubridge-shd-005" = {
    role_definition_id = "/subscriptions/e2991641-9829-476b-824c-f2aa37feb201/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/e2991641-9829-476b-824c-f2aa37feb201"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_lz-us-cpsicorp-dev-001" = {
    role_definition_id = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/bc394838-9294-437f-8aa2-2a624e96c1f0"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_lz-us-cpsicorp-qa-001" = {
    role_definition_id = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_lz-us-cpsicorp-stg-001" = {
    role_definition_id = "/subscriptions/ca9a6240-61ee-429f-be2f-f1058b4e551c/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/ca9a6240-61ee-429f-be2f-f1058b4e551c"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_lz-us-cpsicorp-pd-001" = {
    role_definition_id = "/subscriptions/1d5b2f0b-2ff7-404f-84ea-2d45697dd69d/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/1d5b2f0b-2ff7-404f-84ea-2d45697dd69d"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_sandbox-us-cpsicorp-shd-001" = {
    role_definition_id = "/subscriptions/0cd99a15-38a9-43dd-9f6d-42fd1a667f1a/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/0cd99a15-38a9-43dd-9f6d-42fd1a667f1a"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-ssvcs-us-cpsicorp-con-shd-001-aviatrix_Contributor_sandbox-us-cpsicorp-shd-002" = {
    role_definition_id = "/subscriptions/f8f47ec9-2add-498d-ab32-5b8e7b4dee6c/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/f8f47ec9-2add-498d-ab32-5b8e7b4dee6c"
    principal_id       = "c9cc150a-cc95-4bad-8b04-7e7a6bfe86f2" //enterprise application object ID
  }
  "spn-lz-us-sandbox-shd-002-contributor_Storage Blob Data Contributor_stcrpshdsvcdvoshdusea001" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/resourceGroups/rg-crp-shdsvc-dvo-shd-usea-001/providers/Microsoft.Storage/storageAccounts/stcrpshdsvcdvoshdusea001/blobServices/default/containers/ssvcs-us-cpsicorp-con"
    principal_id       = "59c5ee52-a809-4391-858c-64e934378f57" //enterprise application object ID
  }
  "spn-lz-us-sandbox-shd-002-contributor_Contributor_ssvcs-us-cpsicorp-con-shd-001" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c"
    principal_id       = "59c5ee52-a809-4391-858c-64e934378f57" //enterprise application object ID
  }
  "ssvcs-us-cpsicorp-con-shd-001_Contributor_sandbox-us-cpsicorp-shd-002" = {
    role_definition_id = "/subscriptions/f8f47ec9-2add-498d-ab32-5b8e7b4dee6c/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/f8f47ec9-2add-498d-ab32-5b8e7b4dee6c"
    principal_id       = "7bda0b7b-a3e3-4f15-93ff-c905e041af2a" //enterprise application object ID
  }
  //// End Aviatrix specific ////
  "spn-aad-ca-admin_Storage Blob Data Contributor_stcrpshdsvcdvoshdusea001" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/resourceGroups/rg-crp-shdsvc-dvo-shd-usea-001/providers/Microsoft.Storage/storageAccounts/stcrpshdsvcdvoshdusea001/blobServices/default/containers/ca-policy"
    principal_id       = "4550b421-0839-4446-987f-75afd6c7cc16" //enterprise application object ID
  }
  "mi-uai-trb-ghr-dvps-shd-usea-001-shr_Reader_lz-us" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/providers/Microsoft.Management/managementGroups/lz-us"
    principal_id       = "edcf9e8b-5437-4dd7-afc1-b9c1a8fc3414" // MI object ID
  }
  "mi-uai-trb-ghr-dvps-shd-usea-001-shr_Reader_ssvcs-us" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
    scope              = "/providers/Microsoft.Management/managementGroups/ssvcs-us"
    principal_id       = "edcf9e8b-5437-4dd7-afc1-b9c1a8fc3414" // MI object ID
  }
  "mi-uai-trb-ghr-dvps-shd-usea-001-shr_Key_Vault_Secrets_Officer_kvcrpshdsvcdvoshdusea001" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/b86a8fe4-44ce-4948-aee5-eccb2c155cd7"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/resourceGroups/rg-crp-shdsvc-dvo-shd-usea-001/providers/Microsoft.KeyVault/vaults/kvcrpshdsvcdvoshdusea001"
    principal_id       = "edcf9e8b-5437-4dd7-afc1-b9c1a8fc3414" // MI object ID
  }
  "mi-278803463258413224040251_Tag_Contributor_lz" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/4a9ae827-6dc8-4573-8ac7-8239d42aa03f"
    scope              = "/providers/Microsoft.Management/managementGroups/lz"
    principal_id       = "7f18b900-01e5-4f7c-bc26-99a52524e16a" // MI object ID
  }
  "mi-568824004140008774352060_TRG_Resource_Lock_lz" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/12baa139-2c05-7628-16e2-f711be6b7ca8"
    scope              = "/providers/Microsoft.Management/managementGroups/lz"
    principal_id       = "3692c70c-7f5b-40df-a31d-d67396dcd06f" // MI object ID
  }
  "mi-568824004140008774352060_Contributor_lz" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/providers/Microsoft.Management/managementGroups/lz"
    principal_id       = "3692c70c-7f5b-40df-a31d-d67396dcd06f" // MI object ID
  }
  "mi-703801370436870323582771_Tag_Contributor_sandbox" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/4a9ae827-6dc8-4573-8ac7-8239d42aa03f"
    scope              = "/providers/Microsoft.Management/managementGroups/sandbox"
    principal_id       = "28ff4057-1a28-4c17-8ea4-0f0a3724a2bc" // MI object ID
  }
  "mi-876272142604022258557075_TRG_Resource_Lock_sandbox" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/12baa139-2c05-7628-16e2-f711be6b7ca8"
    scope              = "/providers/Microsoft.Management/managementGroups/sandbox"
    principal_id       = "86dcb4c5-bc1a-4c72-af3e-8eb71a09ac45" // MI object ID
  }
  "mi-876272142604022258557075_Contributor_sandbox" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/providers/Microsoft.Management/managementGroups/sandbox"
    principal_id       = "86dcb4c5-bc1a-4c72-af3e-8eb71a09ac45" // MI object ID
  }
  "mi-014015033762274840474235_Tag_Contributor_ssvcs" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/4a9ae827-6dc8-4573-8ac7-8239d42aa03f"
    scope              = "/providers/Microsoft.Management/managementGroups/ssvcs"
    principal_id       = "96fbd791-3786-40ea-b4a9-9df2d86f6610" // MI object ID
  }
  "mi-283301430665430135234338_TRG_Resource_Lock_ssvcs" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/12baa139-2c05-7628-16e2-f711be6b7ca8"
    scope              = "/providers/Microsoft.Management/managementGroups/ssvcs"
    principal_id       = "26d930da-dbe5-401c-b046-c871cf490aec" // MI object ID
  }
  "mi-283301430665430135234338_Contributor_ssvcs" = {
    role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/providers/Microsoft.Management/managementGroups/ssvcs"
    principal_id       = "26d930da-dbe5-401c-b046-c871cf490aec" // MI object ID
  }
  "dig-security-use1_Contributor_ssvcs-us-cpsicorp-con-shd-001" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c"
    principal_id       = "889b19f6-4798-4ba3-abaf-50ef31bb7b74" // EA object ID
  }
  "dig-security-use1_Contributor_ssvcs-us-cpsicorp-mgmt-shd-001" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1"
    principal_id       = "889b19f6-4798-4ba3-abaf-50ef31bb7b74" // EA object ID
  }
  "dig-security-scanner_Contributor_ssvcs-us-cpsicorp-con-shd-001" = {
    role_definition_id = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/eb375ab3-a505-4240-95ae-6e5a74b11b7c"
    principal_id       = "261316d2-3bed-42a4-b5ce-84a343e9b20a" // EA object ID
  }
  "dig-security-scanner_Contributor_ssvcs-us-cpsicorp-mgmt-shd-001" = {
    role_definition_id = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
    scope              = "/subscriptions/d5d897c6-a179-40db-92e3-6ae73eb04ca1"
    principal_id       = "261316d2-3bed-42a4-b5ce-84a343e9b20a" // EA object ID
  }
  "spn-crp-rcymgt-bintel-pd_key_vault_secrets_user_kvcrpmdpsctpusea002" = {
    role_definition_id = "/providers/microsoft.authorization/roledefinitions/4633458b-17de-408a-b874-0445c86b69e6"
    scope              = "/subscriptions/1d5b2f0b-2ff7-404f-84ea-2d45697dd69d/resourcegroups/rg-crp-mdp-secm-pd-usea-001/providers/microsoft.keyvault/vaults/kvcrpmdpsctpusea002"
    principal_id       = "762e3c08-fb91-4435-bf84-321017fa6e20" // ea object id
  }
  "spn-crp-rcymgt-bintel-qa_key_vault_secrets_user_kvcrpmdpsctqusea002" = {
    role_definition_id = "/providers/microsoft.authorization/roledefinitions/4633458b-17de-408a-b874-0445c86b69e6"
    scope              = "/subscriptions/2b394dab-f093-4276-acb3-b79521bcbaaa/resourcegroups/rg-crp-mdp-secm-qa-usea-001/providers/microsoft.keyvault/vaults/kvcrpmdpsctqusea002"
    principal_id       = "5c088851-85c2-42d0-a6f0-093f41a93908" // ea object id
  }
}
