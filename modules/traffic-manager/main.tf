resource "azurerm_traffic_manager_profile" "this" {
  name                   = var.name
  resource_group_name    = var.resource_group_name
  traffic_routing_method = var.traffic_routing_method

  dns_config {
    relative_name = var.relative_name
    ttl           = var.ttl
  }

  monitor_config {
    protocol                     = var.monitor_protocol
    port                         = var.monitor_port
    path                         = var.monitor_path
    interval_in_seconds          = var.monitor_interval_in_seconds
    timeout_in_seconds           = var.monitor_timeout_in_seconds
    tolerated_number_of_failures = var.tolerated_number_of_failures
  }

  tags = var.tags
}

resource "azurerm_traffic_manager_external_endpoint" "this" {
  for_each = var.endpoints

  name              = each.key
  profile_id        = azurerm_traffic_manager_profile.this.id
  target            = each.value.target
  endpoint_location = each.value.endpoint_location
  priority          = try(each.value.priority, null)
  weight            = try(each.value.weight, null)
  enabled           = try(each.value.enabled, true)
}