resource "azurerm_network_interface" "example_interface" {
    name                                = "example_nic"
    location                            = azurerm_resource_group.rg.location
    resource_group_name                 = azurerm_resource_group.rg.name

    ip_configuration {
        name                            = "internal"
        subnet_id                       = azurerm_virtual_network.vnet_wus2.id
        private_ip_address_allocation   = "Dynamic"
    }

}