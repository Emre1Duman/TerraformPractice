terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
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

# Create resource group for the storage Account
resource "azurerm_resource_group" "example" {
  name      = var.resource_group_name
  location  = var.location
}

# Define the Azure Storage Account
resource "azurerm_storage_account" "example" {
    name                     = var.storage_account_name
    resource_group_name      = azurerm_resource_group.example.name
    location                 = var.location
    account_tier             = var.account_tier
    account_replication_type = var.account_replication_type
# dependent on the resource group
    depends_on = [ azurerm_resource_group.example ]
}

