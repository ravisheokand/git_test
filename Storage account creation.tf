terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "DoNotDeleteRg"
    storage_account_name  = "donotdeletestorage555"
    container_name        = "tfstate"
    key                   = "rkstate.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3a45f28c-3b05-4d1b-b640-21585be45e39"
}

resource "azurerm_resource_group" "ravi" {
  name     = "RKS_rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "ravistg" {
  name                     = "ivaanstorage97531"
  resource_group_name      = resource.azurerm_resource_group.ravi.name
  location                 = resource.azurerm_resource_group.ravi.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
