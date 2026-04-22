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
  description = "Backend FQDN, usually the App Service default hostname"
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
  default     = "WAF_v2" // use 'Standard_v2' if you don't want WAF included
}

variable "sku_tier" {
  description = "Application Gateway SKU tier"
  type        = string
  default     = "WAF_v2" // use 'Standard_v2' if you don't want WAF included
}

variable "capacity" {
  description = "Application Gateway instance count"
  type        = number
  default     = 1
}

variable "ssl_certificate_name" {
  description = "SSL certificate name"
  type        = string
}

variable "ssl_certificate_data" {
  description = "Base64 encoded PFX certificate content"
  type        = string
  sensitive   = true
}

variable "ssl_certificate_password" {
  description = "PFX certificate password"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}


// variables for WAF
variable "waf_enabled" {
  description = "Enable WAF on Application Gateway"
  type        = bool
  default     = true
}

variable "waf_policy_name" {
  description = "WAF policy name"
  type        = string
  default     = null
}

variable "waf_firewall_mode" {
  description = "WAF mode: Detection or Prevention"
  type        = string
  default     = "Detection"
}

variable "waf_rule_set_type" {
  description = "WAF rule set type"
  type        = string
  default     = "OWASP"
}

variable "waf_rule_set_version" {
  description = "WAF rule set version"
  type        = string
  default     = "3.2"
}

variable "waf_file_upload_limit_mb" {
  description = "WAF file upload limit in MB"
  type        = number
  default     = 100
}

variable "waf_max_request_body_size_kb" {
  description = "WAF max request body size in KB"
  type        = number
  default     = 128
}