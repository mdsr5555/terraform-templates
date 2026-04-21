variable "name" {
  description = "Diagnostic setting name"
  type        = string
}

variable "target_resource_id" {
  description = "Resource ID to attach diagnostics to"
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "Log Analytics Workspace ID"
  type        = string
}

variable "log_categories" {
  description = "List of diagnostic log categories"
  type        = list(string)
  default     = []
}

variable "metric_categories" {
  description = "List of metric categories"
  type        = list(string)
  default     = []
}