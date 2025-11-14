terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "xxxx-xxxx-xxxx-xxxx-xxxx"
  features {}

}
