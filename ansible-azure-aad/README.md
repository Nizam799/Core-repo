# Using the AAD Ansible section of this repo

## Before adding new groups in this repo

### Adding Groups / RBAC assignments to terraform pipeline

1. At this time we are using terraform to create the groups / assign RBAC roles

2. All groups / RBAC assignments should be created using the terraform section of this repo prior to using Ansible to add users etc. See the **deployments/cpsi/global/iam/core_aad** and **deployments/cpsi/global/iam/core-role-definition** READMEs

## Adding users to groups

### Update play book yaml

1. Check to see if the group exists in its corresponding playbook such as **aad-az-grp-crp-cloudops.yml, aad-az-rbac-msg-ssvcs.yml, aad-rbac.yml** etc...  If not then add group XYZ to the its corresponding playbook .yml file in alphabetical order. 
2. If needed create a new playbook using the same naming convention as the other playbook files
	- CRP playbooks have been divided further to shorten workflow runtime.

```
    roles:

    # Azure AD RBAC groups
    
     -  { role: aad_groups_population, aad_group_name: '<Existing_RBAC_Group>' }

     -  { role: aad_groups_population, aad_group_name: '<New_RBAC_Group_XYZ>' }

```

### Update all.yml

1. Directory ansible-azure-aad/groups_vars/all.yml
1. Check to see if the group exists if not then add the new group into the all.yml file in alphabetical order under its corresponding section such as RBAC/Persona/AAD RBAC. Then fill in the user, nested groups and SPN member information in alphabetical order.

    - SPNs use ***client ID*** and should have the SPN display name commented after the client ID

2. If you are adding a group that does not have users/nested groups/SPN members do not add in that section as seen in example below Ansible_group2 which only has a nested group

```
    aad_groups:

    # Azure AD RBAC groups

    Ansible_group1: // Group name used in the aad.yml file

  

        users: // Section for users who are members of this group

  

        - Ansible_user1@trubridge.com // UPN of the users to be added to the group

  

        - Ansible_user3@trubridge.com

  

        nested_groups: // Section for groups that are members of this group

  

        - Ansible_gorup3 // group by display name

  

        spn_client_ids: //

  

        - 51726cf1-1455-4f38-b290-117e02cbc5e4 #spn-ansible1

    # Azure AD Persona groups

    Ansible_group2: // This group only has a nested group section

  

        nested_groups:

  

        - Ansible_gorup3 // group by display name

  

```

3. Submit a PR to update the code

    - Two approvers are required for the PR to be approved

    - All checks should pass before the PR is accepted

## Removing Users / Nested groups / SPNs

### Update all.yml

1. Find the group that you are removing the AAD object from

2. Remove the User / Nested Group / SPN from its corresponding section

    - If removing this user etc results in there being no more entries in that section delete the section example Nested_groups: no longer has any groups due to you deleting the last one. Then delete the Nested groups section from under the group name resulting only the group name being left in the code as such

3. Submit PR for the workflow to run and delete the users/nested groups / SPNs from the AAD group

    - Two Approvers are required for the PR to be approved

    - All checks should pass before PR is accepted

## Removing groups

### Update  all.yml

1. Remove the group name group_XYZ: and all sections underneath it such as Users:, Nested Groups: and SPN: including the user UPNs, group display names and SPNs in the all.yml file

### Update the corresponding playbook file

1. Remove the AAD group XYZ from the playbook file **aad-az-grp-crp-cloudops.yml, aad-az-rbac-msg-ssvcs.yml, aad-rbac.yml** etc... as seen below  
    `- { role: aad_groups_population, aad_group_name: '<Group_XYZ>' }`

### Pull Request

1. Submit a PR to update the code

    - Two approvers are required for the PR to be approved

    - All checks should pass before the PR is accepted

### Remove the group from the Terraform AAD to remove the group from Azure AD
1. At this time we are using terraform to create the groups and need to delete the groups by updating the terraform-aad section of this repo which will be done by removing the group from the TFvars file. Please refer to the **deployments/cpsi/global/iam/core_aad** readme for removing the group.