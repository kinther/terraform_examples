resource "azurerm_network_security_group" "example_nsg" {
    name                            = "example_nsg"
    location                        = azurerm_resource_group.rg.location
    resource_group_name             = azurerm_resource_group.rg.name

    security_rule {
        name                        = "outbound_https"
        priority                    = 100
        direction                   = "Outbound"
        access                      = "Allow"
        protocol                    = "Tcp"
        source_port_range           = "*"
        destination_port_range      = "443"
        source_address_prefix       = "172.31.255.0/24"
        destination_address_prefix  = "Internet"
    }

    security_rule {
        name                        = "outbound_dns"
        priority                    = 110
        direction                   = "Outbound"
        access                      = "Allow"
        protocol                    = "UDP"
        source_port_range           = "*"
        destination_port_range      = "53"
        source_address_prefix       = "172.31.255.0/24"
        destination_address_prefix  = "Internet"
    }

}