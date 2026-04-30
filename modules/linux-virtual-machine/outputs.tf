output "id" {
  description = "Linux VM ID."
  value       = azurerm_linux_virtual_machine.this.id
}

output "name" {
  description = "Linux VM name."
  value       = azurerm_linux_virtual_machine.this.name
}

output "private_ip_address" {
  description = "NIC private IP address."
  value       = azurerm_network_interface.this.private_ip_address
}

output "public_ip_address" {
  description = "Created public IP address, if enabled."
  value       = var.create_public_ip ? azurerm_public_ip.this[0].ip_address : null
}

output "network_interface_id" {
  description = "Network interface ID."
  value       = azurerm_network_interface.this.id
}
