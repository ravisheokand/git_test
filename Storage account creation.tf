terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.30.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5c83ee41-460c-400b-8120-13a218b61103"
}

resource "azurerm_resource_group" "ravi" {
  name     = "RKS_rg"
  location = "West Europe"
}

resource "azurerm_resource_group" "ravi1" {
  name     = "RKS_rg1"
  location = "Central India"
}

# resource "azurerm_storage_account" "ravistg" {
#   name                     = "rksstorage"
#   resource_group_name      = "RKS_rg"
#   location                 = "West Europe"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
# }

# resource "azurerm_storage_account" "ravistg1" {
#   name                     = "rksstorage1"
#   resource_group_name      = "RKS_rg1"
#   location                 = "Central India"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
# }