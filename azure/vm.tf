resource "azurerm_linux_virtual_machine" "example_vm" {
    name                            = "example_linux_vm"
    resource_group_name             = azurerm_resource_group.rg.name
    location                        = azurerm_resource_group.rg.location
    size                            = "B1s"
    admin_username                  = "adminuser"
    
    network_interface_ids = [
        azurerm_network_interface.example_interface.id,
    ]

    os_disk {
        caching                     = "ReadWrite"
        storage_account_type        = "Standard_LRS"
    }

    source_image_reference {
        publisher                   = "Canonical"
        offer                       = "UbuntuServer"
        sku                         = "20.04-LTS"
        version                     = "latest"
    }

}