resource "azurerm_subnet" "example" {
  name                 = "example-subnet-dev"
  resource_group_name  = azurerm_resource_group.k8s.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.0.0/25"]
}
