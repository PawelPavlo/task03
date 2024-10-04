#output "rg_id" {
#  description = "ID of the Resource Group"
#  value       = azurerm_resource_group.main.id
#}

output "rg_id" {
  value = data.azurerm_resource_group.main.id
}


output "sa_blob_endpoint" {
  description = "storage account blob endpoint URL"
  value       = azurerm_storage_account.main_storage.primary_blob_endpoint
}

output "vnet_id" {
  description = "Vnet ID"
  value       = azurerm_virtual_network.main_vnet.id
}