variable "name" {
  description = "Linux VM name."
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

variable "size" {
  description = "VM size."
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Admin username."
  type        = string
  default     = "azureuser"
}

variable "admin_ssh_public_key" {
  description = "SSH public key."
  type        = string
  sensitive   = true
}

variable "subnet_id" {
  description = "Subnet ID for the NIC."
  type        = string
}

variable "network_interface_name" {
  description = "NIC name."
  type        = string
}

variable "ip_configuration_name" {
  description = "NIC IP configuration name."
  type        = string
  default     = "ipconfig1"
}

variable "private_ip_address_allocation" {
  description = "Private IP allocation method."
  type        = string
  default     = "Dynamic"
}

variable "private_ip_address" {
  description = "Optional static private IP."
  type        = string
  default     = null
}

variable "create_public_ip" {
  description = "Whether to create a public IP."
  type        = bool
  default     = true
}

variable "public_ip_name" {
  description = "Public IP name. Required when create_public_ip is true."
  type        = string
  default     = null
}

variable "public_ip_address_id" {
  description = "Existing public IP ID. Used when create_public_ip is false."
  type        = string
  default     = null
}

variable "public_ip_allocation_method" {
  description = "Public IP allocation method."
  type        = string
  default     = "Static"
}

variable "public_ip_sku" {
  description = "Public IP SKU."
  type        = string
  default     = "Standard"
}

variable "os_disk_caching" {
  description = "OS disk caching."
  type        = string
  default     = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  description = "OS disk storage type."
  type        = string
  default     = "Standard_LRS"
}

variable "source_image_reference" {
  description = "Source image reference."
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}

variable "tags" {
  description = "Resource tags."
  type        = map(string)
  default     = {}
}
