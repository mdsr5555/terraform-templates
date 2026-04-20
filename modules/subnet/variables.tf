variable "name" {
  description = "Subnet name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "virtual_network_name" {
  description = "Virtual network name"
  type        = string
}

variable "address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
}

variable "private_endpoint_network_policies" {
  description = "Enable or disable private endpoint network policies"
  type        = string
  default     = "Disabled"
}

variable "delegation_name" {
  description = "Optional delegation block name"
  type        = string
  default     = null
}

variable "service_delegation_name" {
  description = "Optional service delegation name"
  type        = string
  default     = null
}

variable "service_delegation_actions" {
  description = "Actions for service delegation"
  type        = list(string)
  default     = []
}