resource "azurerm_resource_group" "main" {
  name     = "rg-simple-vnet"
  location = "West Europe"
}


resource "azurerm_virtual_network" "main" {
  name                = "vnet-simle"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = ["10.0.0.0/16"]
}