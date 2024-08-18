variable "vm_name" {
  description = "The name of VM"
}

variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "subnet_id" {
  description = "The ID of the subnet"
}

variable "location" {
  description = "The location of the resources"
}

variable "prefix" {
  default = "tfvmex"
}

variable "main_ip_configuration_name" {
  type    = string
  default = "testconfiguration1"
}

variable "main_storage_image_reference_sku" {
  type    = string
  default = "22_04-lts"
}

variable "main_storage_os_disk_managed_disk_type" {
  type    = string
  default = "Standard_LRS"
}

variable "main_storage_os_disk_name" {
  type    = string
  default = "myosdisk1"
}

variable "main_os_profile_computer_name" {
  type    = string
  default = "hostname"
}

variable "main_os_profile_admin_username" {
  type    = string
  default = "testadmin"
}

variable "main_os_profile_admin_password" {
  type    = string
  default = "<password>"
}

variable "main_os_profile_linux_config_disable_password_authentication" {
  type    = bool
  default = false
}