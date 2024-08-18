variable "vnet_name" {
  description = "Name of the virtual network"
}

variable "subnet_name" {
  description = "Name of the subnet"
}

variable "address_space" {
  description = "The address space that is used by the virtual network"
  type        = list(string)
  default = ["10.0.0.0/16"]
}

variable "address_prefixes" {
  description = "The address prefix to use for the subnet"
  type        = list(string)
  default = ["10.0.2.0/24"]
}

variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The location of the resources"
}

variable "prefix" {
  default = "tfvmex"
}