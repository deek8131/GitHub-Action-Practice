terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

 backend "azurerm" {
  resource_group_name  = "tfstate-rg"
  storage_account_name = "tfstate19may2026"   # ← yeh naya naam
  container_name       = "tfstate"
  key                  = "rg.terraform.tfstate"
}
}

provider "azurerm" {
  features {}
  # subscription_id = var.subscription_id
}
