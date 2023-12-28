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
    client_id   = ""
    client_secret   = ""
    subscription_id = ""
    tenant_id       = "" 
}

resource "azurerm_resource_group" "example" {
    name = var.resource_group
    location = var.resource_location
}

resource "azurerm_storage_account" "example" {
    name = "storageaccount1"
    resource_group_name = var.resource_group
    location = var.resource_location
    account_tier = "Standard"
    account_replication_type = var.resource_replication
    depends_on = [ azurerm_resource_group.example ]
}