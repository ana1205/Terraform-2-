
output "resource_group_name" {
  description = "Nombre del grupo de recursos creado"
  value       = azurerm_resource_group.rg.name
}

output "virtual_network_name" {
  description = "Nombre de la red virtual creada"
  value       = azurerm_virtual_network.vnet.name
}

output "virtual_network_address_space" {
  description = "Rango de direcciones de la red virtual"
  value       = azurerm_virtual_network.vnet.address_space
}

output "deployment_location" {
  description = "Region de despliegue"
  value       = azurerm_resource_group.rg.location
}