variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
}

variable "location" {
  description = "Azure region for the App Service Plan"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the App Service Plan will be deployed"
  type        = string
}

variable "os_type" {
  description = "Operating system type for the App Service Plan"
  type        = string
  default     = "Linux"
}

variable "sku_name" {
  description = "SKU for the App Service Plan"
  type        = string
  default     = "B1"
}

variable "tags" {
  description = "Tags to apply to the App Service Plan"
  type        = map(string)
  default     = {}
}