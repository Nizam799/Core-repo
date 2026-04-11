/*
This section is for AAD RBAC groups
assignable role set to true for Azure AD group roles
*/
azuread_directory_groups = {
  "aad-rbac-directory-readers" = {
    role_id = "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
  }
  "aad-rbac-global-reader" = {
    role_id = "f2ef992c-3afb-46b9-b7cf-a126ee74c451"
  }
  "aad-rbac-groups-admin" = {
    role_id = "fdd7a751-b60b-444a-984c-02652fe8fa1c"
  }
  "aad-rbac-privileged-role-administrator" = {
    role_id = "e8611ab8-c189-46e8-94e1-60213ab1f814"
  }
  "aad-rbac-spn-aad-argo-cd-oidc-cloud-app-admin" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "2868096d-5f86-4948-b24f-f09a5951234d"
  }
  "aad-rbac-spn-crp-kubeops-aks-001-cloud-app-admin" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "d2e3ece8-2258-433c-a905-0519bfda5268"
  }
  "aad-rbac-spn-prisma-wwfoj-cloud-app-admin" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "4037654e-cd18-4bbc-a675-383f65fd0d49"
  }
  "aad-rbac-spn-sbx-argocd-cloud-app-admin" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "ce9f332c-d8e6-40e2-97d6-94cb1ae94f15"
  }
  "aad-pag-workday-absence-calendar-integration-sbx" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "b94e71a2-0400-4cee-8d6f-a6355341cacd"
  }
  "aad-pag-spn-sp-trb-ado-cloud-app-admin" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "36ab6602-d606-4dc3-9d09-7d2917e2e8d4"
  }
  "aad-pag-spn-crp-note-app-dev-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "ce8be56d-1356-42ed-922a-58b113b5399a"
  }
  "aad-pag-spn-crp-note-app-qa-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "8f857626-d33d-4e64-a6c1-892d1f22a4f2"
  }
  "aad-pag-spn-crp-note-app-pd-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "9b08e37c-5946-46dd-ad2e-4f074c8e77a3"
  }
  "aad-pag-spn-crp-note-app-stg-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "e02724c4-b59f-4bdc-bdd1-d2367ca25a3c"
  }
  "aad-pag-spn-crp-linus-app-dev-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "92a14435-3595-4f42-bf7a-bf956e885a4a"
  }
  "aad-pag-spn-crp-linus-app-qa-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "ddaab416-9d26-41b1-89e4-9ff77886b6e4"
  }
  "aad-pag-spn-crp-linus-app-pd-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "47c1d014-2093-4e5e-896e-178b8dae6f91"
  }
  "aad-pag-spn-crp-linus-app-stg-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "99899de3-30ce-49ac-b020-4b9fa25abb92"
  }
  "aad-pag-spn-crp-ssa-app-dev-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "ecef8a16-803c-4bf7-933c-46cbacc39caa"
  }
  "aad-pag-spn-crp-ssa-app-qa-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "b164a11e-c19c-4e6b-b6d3-b25cc462c625"
  }
  "aad-pag-spn-crp-ssa-app-pd-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "a07e1013-9ce4-4943-9c37-499432132b65"
  }
  "aad-pag-spn-crp-ssa-app-stg-usea-001-los" = {
    role_id            = "158c047a-c907-4556-b7ef-446551a6b5f7"
    directory_scope_id = "35773424-66db-47ae-9690-d23b665924bb"
  }
}
