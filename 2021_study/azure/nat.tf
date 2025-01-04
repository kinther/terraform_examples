resource "azurerm_nat_gateway" "example_nat_gateway" {
    name                        = "example_nat_gateway"
    location                    = azurerm_resource_group.rg.location
    resource_group_name         = azurerm_resource_group.rg.name
    sku_name                    = "Standard"
    idle_timeout_in_minutes     = 10
    zones                       = ["1"]
}