terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = ""
  client_secret   = ""
  subscription_id = ""
  tenant_id       = ""
}

# Define the Azure resource group resource
resource "azurerm_resource_group" "example" {
  name     = "my-resource-group"
  location = "UK South"
}

# Define the Azure Storage Account resource
resource "azurerm_storage_account" "example" {
  name                     = "storageaccount1"
  resource_group_name      = "my-resource-group"
  location                 = "UK South"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on = [azurerm_resource_group.example]
}
