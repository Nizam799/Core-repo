terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.19.1"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

provider "github" {
  owner = "CPSICorp"
  app_auth {} # When using `GITHUB_APP_XXX` environment variables
}
