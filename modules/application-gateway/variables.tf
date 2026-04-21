variable "name" {
  description = "Application Gateway name"
  type        = string
}

variable "public_ip_name" {
  description = "Public IP name for Application Gateway"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for Application Gateway"
  type        = string
}

variable "backend_fqdn" {
  description = "Backend FQDN, for example App Service default hostname"
  type        = string
}

variable "health_probe_path" {
  description = "Health probe path"
  type        = string
  default     = "/health"
}

variable "sku_name" {
  description = "Application Gateway SKU name"
  type        = string
  default     = "Standard_v2"
}

variable "sku_tier" {
  description = "Application Gateway SKU tier"
  type        = string
  default     = "Standard_v2"
}

variable "capacity" {
  description = "Instance capacity"
  type        = number
  default     = 1
}

variable "ssl_certificate_name" {
  description = "SSL certificate name in Application Gateway"
  type        = string
}

variable "ssl_certificate_data" {
  description = "Base64-encoded PFX certificate data"
  type        = string
  sensitive   = true
}

variable "ssl_certificate_password" {
  description = "Password for the PFX certificate"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}