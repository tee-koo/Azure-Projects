terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "32a1da32-5bd0-4978-9217-703a15199f93"
  features {}
}