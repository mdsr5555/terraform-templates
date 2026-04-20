variable "name" { type = string }
variable "location" { type = string }
variable "resource_group_name" { type = string }
variable "virtual_wan_id" { type = string }
variable "address_prefix" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}