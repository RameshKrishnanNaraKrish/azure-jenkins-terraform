resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-network"
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
  
  timeouts {
    create = "10m"
    read   = "10m"
    update = "10m"
    delete = "10m"
  }

}

resource "azurerm_subnet" "internal" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.address_prefixes

    timeouts {
    create = "10m"
    read   = "10m"
    update = "10m"
    delete = "10m"
  }

}
