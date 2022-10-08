terraform {
  required_providers {
    azurerm = {
      version = "~> 2.46.1"
    }
  }
}

provider "azurerm" {
  features {}
}