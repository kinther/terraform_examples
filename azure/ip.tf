resource "azurerm_public_ip" "example_ip" {
    name                        = "example_public_ip"
    location                    = azurerm_resource_group.rg.location
    resource_group_name         = azurerm_resource_group.rg.name
    allocation_method           = "Static"
    sku                         = "Standard"
    zones                       = ["1"]
}

resource "azurerm_public_ip_prefix" "example_ip_prefix" {
    name                        = "example_public_ip_prefix"
    location                    = azurerm_resource_group.rg.location
    resource_group_name         = azurerm_resource_group.rg.name
    prefix_length               = 32
    zones                       = ["1"]
}