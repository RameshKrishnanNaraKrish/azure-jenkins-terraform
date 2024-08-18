resource "azurerm_resource_group" "az_rg" {
  name     = var.resource_group_name
  location = var.location

    timeouts {
    create = "10m"
    read   = "10m"
    update = "10m"
    delete = "10m"
  }

}