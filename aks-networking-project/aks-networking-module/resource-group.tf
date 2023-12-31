resource "azurerm_resource_group" "aks" {
  name     = "aks-resources"
  location = "UK South" # Change this to your desired region.
}