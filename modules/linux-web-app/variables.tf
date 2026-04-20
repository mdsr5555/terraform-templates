variable "web_app_name" {
  description = "Name of the Linux Web App"
  type        = string
}

variable "location" {
  description = "Azure region for the Linux Web App"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the Linux Web App will be deployed"
  type        = string
}

variable "app_service_plan_id" {
  description = "ID of the App Service Plan used by the Web App"
  type        = string
}

variable "https_only" {
  description = "Force HTTPS only"
  type        = bool
  default     = true
}

variable "always_on" {
  description = "Enable always on"
  type        = bool
  default     = false
}

variable "dotnet_version" {
  description = "Dotnet version for the Linux Web App"
  type        = string
  default     = "8.0"
}

variable "app_settings" {
  description = "Application settings for the Linux Web App"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Tags to apply to the Linux Web App"
  type        = map(string)
  default     = {}
}