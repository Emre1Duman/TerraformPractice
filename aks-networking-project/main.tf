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
  client_id       = "ec871d85-09c6-4794-8e18-44a6a598b542"
  client_secret   = "4Og8Q~FR2JFGtqtthKICSWMweGDUuBQqfjsvDaKn"
  subscription_id = "e3db8dda-1544-4d60-8384-3cd2e7b5219b"
  tenant_id       = "bc80dbbb-73b7-439c-b470-20d000dd59b2"
}

module "aks_networking" {
  source              = "./aks-networking-module" # Path to module directory
}