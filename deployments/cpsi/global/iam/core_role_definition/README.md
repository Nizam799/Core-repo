# Using the Custom role section of this repo

## Adding a new role

### Update the terraform.tfvars in this directory

1. Create the name of the custom role example LZ MDP Container Group Contributor and  add it to the TF object section as well as the name section of the custom role
    - **The role name needs to be unique to the tenant**
1. Define allow actions, data actions and deny actions for the role
    - For further reading on actions please refer to the link below
    - https://learn.microsoft.com/en-us/azure/role-based-access-control/custom-roles 
1. Create the role description
1. Add the Role scope. This will be the highest level the role can be assigned and does not need to be the minimum scope the role will be assigned.

```
  "LZ MDP Container Group Contributor" = {

    actions = [

      "Microsoft.ContainerInstance/containerGroups/write",

      "Microsoft.ContainerInstance/containerGroups/delete",

      "Microsoft.ContainerInstance/containerGroups/read",

      "Microsoft.ManagedIdentity/userAssignedIdentities/assign/action"

    ]

    data_actions     = []

    description      = "This role is for the Ingestion of ADF in the Modern Data Platform to dynamically create container groups in the ADF pipelines to perform the dbt transforms, monitor the status of the transforms, and then delete the container groups when done."

    name             = "LZ MDP Container Group Contributor"

    not_actions      = []

    not_data_actions = []

    scope            = "lz" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects

  }

```

### Pull Request

1. Submit a PR to update the code

    - Two approvers are required for the PR to be approved

    - All checks should pass before the PR is accepted

## Removing a custom role

### Before removing a custom role

1. Verify that the role is no longer being used by any users or groups in the Terraform-azure-stack-aad section of this repo

### Update the terraform.tfvars in this directory

1. Remove the entire section of the custom role terraform object below

```

  "LZ MDP Container Group Contributor" = {

    actions = [

      "Microsoft.ContainerInstance/containerGroups/write",

      "Microsoft.ContainerInstance/containerGroups/delete",

      "Microsoft.ContainerInstance/containerGroups/read",

      "Microsoft.ManagedIdentity/userAssignedIdentities/assign/action"

    ]

    data_actions     = []

    description      = "This role is for the Ingestion of ADF in the Modern Data Platform to dynamically create container groups in the ADF pipelines to perform the dbt transforms, monitor the status of the transforms, and then delete the container groups when done."

    name             = "LZ MDP Container Group Contributor"

    not_actions      = []

    not_data_actions = []

    scope            = "lz" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects

  }

```

### Pull Request

1. Submit a PR to update and run the code which will remove the Azure custom role

    - Two approvers are required for the PR to be approved

    - All checks should pass before the PR is accepted