variable "prefix" {
  default = "tfvmex"
}

variable "location" {
  default = "West Europe"
}

provider "azurerm" {
  features {}
}

module "resource_group" {
    source = "./modules/resource_group"

    resource_group_name = "${var.prefix}-resources"
    location = var.location
}


module "network" {
  source = "./modules/network"

  vnet_name           = "jenkins-vnet"
  subnet_name         = "jenkins-subnet"
  address_space       = ["10.0.0.0/16"]
  address_prefixes    = ["10.0.1.0/24"]
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
}

module "vm" {
    source = "./modules/vm"

    vm_name = "${var.prefix}-vm"
    resource_group_name = module.resource_group.resource_group_name
    subnet_id = module.network.subnet_id
    location = module.resource_group.resource_group_location
  
}