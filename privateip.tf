resource "azurerm_network_interface" "example" {
  name                = "example-nic-dev"
  location            = azurerm_resource_group.k8s.location
  resource_group_name = azurerm_resource_group.k8s.name
  ip_configuration {
    name                          = "example-nic-ipconfig-dev"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
   # public_ip_address_id          = null
    public_ip_address_id          = azurerm_public_ip.example.id
  }
}
