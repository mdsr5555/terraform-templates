output "id" {
  description = "Private endpoint ID"
  value       = azurerm_private_endpoint.pe.id
}

output "name" {
  description = "Private endpoint name"
  value       = azurerm_private_endpoint.pe.name
}