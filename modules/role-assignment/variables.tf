variable "scope" {
  description = "Scope for the role assignment."
  type        = string
}

variable "role_definition_name" {
  description = "Built-in role definition name."
  type        = string
}

variable "principal_id" {
  description = "Principal/object ID receiving the role."
  type        = string
}

variable "skip_service_principal_aad_check" {
  description = "Skip AAD check for service principals."
  type        = bool
  default     = true
}
