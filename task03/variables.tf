variable "location" {
  description = "The Azure Region where the Resource Group and Resources should exist"
  type        = string
}

variable "private_snet_address_prefixes" {
  description = "The address prefixes to use for the private subnet"
  type        = list(string)
}

variable "private_snet_name" {
  description = "The name of the private subnet"
  type        = string
}

variable "public_snet_address_prefixes" {
  description = "The address prefixes to use for the public subnet"
  type        = list(string)
}

variable "public_snet_name" {
  description = "The name of the public subnet"
  type        = string
}

variable "rg_name" {
  description = "The Name which should be used for this Resource Group"
  type        = string
  default     = "test-rg"
}

variable "storage_account_name" {
  description = "Specifies the name of the storage account"
  type        = string
}

variable "storage_account_replication_type" {
  description = "Defines the type of replication to use for this storage account"
  type        = string
}

variable "tags" {
  description = "A mapping of tags that should be assigned to resources"
  type        = map(string)
  default     = {}
}

variable "vnet_address_space" {
  description = "The address space that is used the virtual network"
  type        = list(string)
}

variable "vnet_name" {
  description = "value"
  type        = string
}
