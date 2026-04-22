output "id" {
  value = azurerm_application_gateway.this.id
}

output "public_ip_address" {
  value = azurerm_public_ip.this.ip_address
}

output "public_ip_id" {
  value = azurerm_public_ip.this.id
}

output "waf_policy_id" {
  value = var.waf_enabled ? azurerm_web_application_firewall_policy.this[0].id : null
}