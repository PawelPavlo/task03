variable "location" {
  description = "region"
  type        = string
}

variable "rg_name" {
  description = "Resource Group name"
  type        = string
  default     = "cmtr-b5eedb66-mod3-rg"
}

variable "storage_account_name" {
  description = "storage account"
  type        = string
  default     = "cmtrb5eedb66mod3sa"
}

variable "vnet_name" {
  description = "Virtual Network"
  type        = string
  default     = "cmtr-b5eedb66-mod3-vnet"
}

variable "public_snet_name" {
  description = "public subnet"
  type        = string
  default     = "frontend"
}

variable "public_snet_address_prefixes" {
  description = "The address prefixes to use for the public subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "private_snet_name" {
  description = "private subnet"
  type        = string
  default     = "backend"
}

variable "private_snet_address_prefixes" {
  description = "The address prefixes to use for the private subnet"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "tags" {
  description = "A mapping of tags that should be assigned to resources"
  type        = map(string)
  default = {
    Creator = "pavlo_vikhrak@epam.com"
  }
}

variable "storage_account_replication_type" {
  description = "Defines the type of replication to use for this storage account"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space that is used the virtual network"
  type        = list(string)
}