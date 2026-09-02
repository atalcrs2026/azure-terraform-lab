terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-lab"
    storage_account_name = "tfstoragedmoki1"
    container_name       = "lab-container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  resource_provider_registrations = "none"
}
