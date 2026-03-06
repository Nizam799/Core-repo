# IAM Repository – Standards & Guidelines

This repository manages **Identity and Access Management (IAM)** through a combination of **Terraform** (for group/role creation, RBAC, and policies) and **Ansible** (for group population).  

---

## Branching Strategy

We follow [Semantic Versioning](https://semver.org/) (`MAJOR.FEATURE.PATCH`) for branch names and change categorization.
### Branch Types & Use Cases

- **`major/breaking/<description>`**  
  - Breaking or foundational changes  
  - Examples: Updating Terraform modules, refactoring Ansible roles  

- **`feature/minor/<description>`**  
  - Additive, non-breaking changes  
  - Examples: Adding new groups, creating new roles  

- **`hotfix/patch/<description>`**  
  - Small or corrective fixes  
  - Examples:  
    - Adding/removing users in existing groups  
    - Removing nested groups or SPNs  
    - Fixing errors caused by references to users/groups/SPNs that no longer exist in the tenant   
---

### Branch Creation Rules
- All branches must be created from a **Jira ticket**.  
- Branch names should include the Jira key (e.g., `feature/COP-1234`).  

---

## Commit Message Standards

All commits must begin with the Jira ticket number in the format:

example: "COP-1234:added xyz group"

---

## Naming Conventions

We no longer use Excel sheets for naming.  
Refer to the **[Lookup Values – Cloud Operations – Confluence](https://confluence.cpsi.com/display/CO/Lookup+Values)** page for up-to-date naming standards.  

---

## Adding / Removing Users from Groups

### `ansible-azure-aad`  
- Contains Ansible code to add or remove users from groups.  
- See the directory README for guidance on populating groups.   

---

## Group Creation and Permissions

### `deployments/cpsi/global/iam/core_aad`  
- Contains Terraform code for persona groups, AAD groups, and RBAC assignments (including SPNs).  
- See the directory README for guidance on creating additional groups.   

---

## Custom Roles

### `deployments/cpsi/global/iam/core-role-definition`  
- Contains Terraform code to create custom roles.  
- See the directory README for guidance.  

---

## Workflow Overview

- **Terraform (TF)** → Creates groups and custom roles 
- **Ansible** → Populates groups with users, nested groups, and SPNs  

This ensures a **separation of concerns**:  
- TF = **structure & lifecycle**  
- Ansible = **membership management**

---

## Workflows and Triggers

### Ansible-linter
- **Trigger:** PR, Push, Workflow dispatch  
- Runs ansible-lint (requirements in `requirements.yml`, exceptions in `.ansible-lint`)  

### Ansible Populate AAD Groups
- **Trigger:** `workflow_call`  
- Called by CRON/Dispatch workflows or Deploy AAD workflow  
- Requires `githubEnv` input and a federated SPN  

### Ansible Populate AAD Groups CRON and Dispatch
- **CRON:** Runs daily at 6 AM EST on `main`  
- **Manual:** Can be triggered via `workflow_dispatch`  

### Production Run All Workflows
- **Trigger:** Push to `main` or manual dispatch  
- Runs in sequence:  
  1. `core_role_definition`  
  2. `core_aad`  
  3. `Ansible Populate AAD Groups`  
- Terraform workflows use a **reusable template from** the `reusable-workflow-azure-terraform` repo  

### Terraform Fmt All
- **Trigger:** PR, Push, Workflow dispatch, Schedule  
- Runs:  
  ```bash
  terraform fmt -check -recursive

# FAQ

## Why are we not assigning RBAC with ansible?

  

### Reasons for not using ansible for RBAC

  

- Currently ansible has a limitation where it can only check permissions for a group the the SPN has logged into.

    - Problem 1 ansible will error out assigning permissions that already exist

        - There is a problem where the workflow will error out do to attempting to assigning permissions that already exist on a group because the workflow did not identity the permissions already existed in a subscription  the SPN was not logged into

    - problem 2 ansible can't not remove permissions correctly

        - This prevent ansible from removing RBAC permissions from groups that have RBAC permissions for a subscription outside of the subscription the SPN is logged into

  

## Why are we not creating groups with ansible?

  

### Reason for not using ansible for Group creation

  

- Ansible currently dose not support creating groups that are Directory role assignable

    - We will be utilizing PIM for roles that users will not need access to on a daily basis. Some of these roles are AAD roles and require an AAD group to be set to Directory role assignable at the time of creation. However Terraform allows us to create groups with this feature enabled

