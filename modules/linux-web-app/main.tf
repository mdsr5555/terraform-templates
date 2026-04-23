resource "azurerm_linux_web_app" "webapp" {
  name                      = var.web_app_name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  service_plan_id           = var.app_service_plan_id
  https_only                = var.https_only
  virtual_network_subnet_id = var.virtual_network_subnet_id
  tags                      = var.tags

  identity {
    type = var.managed_identity_enabled ? "SystemAssigned" : "None"
  }

  site_config {
    always_on         = var.always_on
    health_check_path = var.health_check_path
    ftps_state        = var.ftps_state
    http2_enabled     = var.http2_enabled

    application_stack {
      dotnet_version = var.dotnet_version
    }
  }

  app_settings = var.app_settings
}