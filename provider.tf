terraform {
  required_version = ">=1.5"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.74.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "d916b3cf-5974-4441-8d1b-3a86fabd1d40"
}

