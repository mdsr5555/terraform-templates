output "id" {
  description = "Application Gateway ID"
  value       = azurerm_application_gateway.this.id
}

output "public_ip_address" {
  description = "Public IP address of Application Gateway"
  value       = azurerm_public_ip.this.ip_address
}

output "public_ip_id" {
  description = "Public IP resource ID"
  value       = azurerm_public_ip.this.id
}