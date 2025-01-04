# Create a virtual network
resource "azurerm_virtual_network" "vnet_wus2" {
  name                = "vnet_wus2"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["172.31.255.0/24"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]

  subnet {
    name              = "main"
    address_prefix    = "172.31.255.0/25"
    security_group    = azurerm_network_security_group.example_nsg.id
  }

  subnet {
    name              = "secondary"
    address_prefix    = "172.31.255.128/26"
    security_group    = azurerm_network_security_group.example_nsg.id
  }

  subnet {
    name              = "tertiary"
    address_prefix    = "172.31.255.192/26"
    security_group    = azurerm_network_security_group.example_nsg.id
  }

  tags = {
    environment = "Test"
  }

}