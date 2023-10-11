resource "azurerm_virtual_network" "example" {
  name                = var.vnetname
  location            = azurerm_resource_group.k8s.location
  resource_group_name = azurerm_resource_group.k8s.name
  address_space       = ["10.0.0.0/24"]
}