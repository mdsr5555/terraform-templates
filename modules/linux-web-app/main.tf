resource "azurerm_linux_web_app" "webapp" {
  name                = var.web_app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.app_service_plan_id
  https_only          = var.https_only
  tags                = var.tags

  site_config {
    always_on = var.always_on

    application_stack {
      dotnet_version = var.dotnet_version
    }
  }

  app_settings = var.app_settings
}