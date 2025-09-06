terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "DoNotDeleteRg"
    storage_account_name  = "donotdeletestorage5555"
    container_name        = "tfstate"
    key                   = "rks_sep.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "13dfd1e6-6770-4299-b7ea-6aa09b346468"
}

resource "azurerm_resource_group" "ravi" {
  name     = "RKS_rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "ravistg" {
  name                     = "isstorage97531"
  resource_group_name      = resource.azurerm_resource_group.ravi.name
  location                 = resource.azurerm_resource_group.ravi.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
