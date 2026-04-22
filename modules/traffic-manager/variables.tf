variable "name" {
  description = "Traffic Manager profile name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name for Traffic Manager profile"
  type        = string
}

variable "traffic_routing_method" {
  description = "Traffic Manager routing method"
  type        = string
  default     = "Priority"
}

variable "relative_name" {
  description = "Traffic Manager DNS relative name"
  type        = string
}

variable "ttl" {
  description = "Traffic Manager DNS TTL"
  type        = number
  default     = 30
}

variable "monitor_protocol" {
  description = "Health probe protocol"
  type        = string
  default     = "HTTPS"
}

variable "monitor_port" {
  description = "Health probe port"
  type        = number
  default     = 443
}

variable "monitor_path" {
  description = "Health probe path"
  type        = string
  default     = "/health"
}

variable "monitor_interval_in_seconds" {
  description = "Health probe interval"
  type        = number
  default     = 30
}

variable "monitor_timeout_in_seconds" {
  description = "Health probe timeout"
  type        = number
  default     = 9
}

variable "tolerated_number_of_failures" {
  description = "Tolerated probe failures before endpoint is considered degraded"
  type        = number
  default     = 3
}

variable "endpoints" {
  description = "Traffic Manager endpoints"
  type = map(object({
    target            = string
    endpoint_location = string
    priority          = optional(number)
    weight            = optional(number)
    enabled           = optional(bool, true)
  }))
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}