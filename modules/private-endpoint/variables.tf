variable "name" {
  description = "Private endpoint name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the private endpoint"
  type        = string
}

variable "private_service_connection_name" {
  description = "Private service connection name"
  type        = string
}

variable "private_connection_resource_id" {
  description = "Target resource ID for the private endpoint"
  type        = string
}

variable "subresource_names" {
  description = "Subresource names, for example [\"blob\"]"
  type        = list(string)
}

variable "private_dns_zone_group_name" {
  description = "Private DNS zone group name"
  type        = string
  default     = "default"
}

variable "private_dns_zone_ids" {
  description = "List of private DNS zone IDs"
  type        = list(string)
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}