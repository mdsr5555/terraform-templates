output "id" {
  description = "Private DNS zone ID"
  value       = azurerm_private_dns_zone.zone.id
}

output "name" {
  description = "Private DNS zone name"
  value       = azurerm_private_dns_zone.zone.name
}