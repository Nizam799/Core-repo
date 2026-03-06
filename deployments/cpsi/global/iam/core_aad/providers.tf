terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "=2.31.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.19.1"
    }
  }
}

provider "azuread" {
  use_oidc = true
}

provider "azurerm" {
  features {}
  use_oidc = true
}
