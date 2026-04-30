variable "name" {
  description = "Network security group name."
  type        = string
}

variable "location" {
  description = "Azure location."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
}

variable "subnet_id" {
  description = "Optional subnet ID to associate with the NSG."
  type        = string
  default     = null
}

variable "security_rules" {
  description = "NSG security rules."
  type = list(object({
    name                                       = string
    priority                                   = number
    direction                                  = string
    access                                     = string
    protocol                                   = string
    source_port_range                          = optional(string)
    source_port_ranges                         = optional(list(string))
    destination_port_range                     = optional(string)
    destination_port_ranges                    = optional(list(string))
    source_address_prefix                      = optional(string)
    source_address_prefixes                    = optional(list(string))
    destination_address_prefix                 = optional(string)
    destination_address_prefixes               = optional(list(string))
    source_application_security_group_ids      = optional(list(string))
    destination_application_security_group_ids = optional(list(string))
    description                                = optional(string)
  }))
  default = []
}

variable "tags" {
  description = "Resource tags."
  type        = map(string)
  default     = {}
}
