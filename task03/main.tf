provider "azurerm" {
  features {}
  subscription_id = "5b2dce2d-b796-44e5-8f67-cea66f735d9e"
  tenant_id       = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
}

#resource "azurerm_resource_group" "main" {
#  name     = var.rg_name
#  location = var.location
#  tags     = var.tags
#}

data "azurerm_resource_group" "main" {
  name = var.rg_name
}

resource "azurerm_storage_account" "main_storage" {
  name                     = var.storage_account_name
  resource_group_name      = data.azurerm_resource_group.main.name
  location                 = data.azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = var.storage_account_replication_type
  tags                     = var.tags
}

resource "azurerm_virtual_network" "main_vnet" {
  name                = var.vnet_name
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  address_space       = var.vnet_address_space
  tags                = var.tags
}

resource "azurerm_subnet" "public_subnet" {
  name                 = var.public_snet_name
  resource_group_name  = data.azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main_vnet.name
  address_prefixes     = var.public_snet_address_prefixes
}

resource "azurerm_subnet" "private_subnet" {
  name                 = var.private_snet_name
  resource_group_name  = data.azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main_vnet.name
  address_prefixes     = var.private_snet_address_prefixes
}
