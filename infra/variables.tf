# infra/variables.tf

variable "project_name" {
  description = "Prefix for resource names"
  default     = "urbanconnect"
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  default     = "myapp-rg"
}

variable "location" {
  description = "Azure region"
  default     = "eastus"
}

variable "admin_username" {
  description = "Admin username for the VM"
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  #default     = "~/.ssh/id_rsa.pub"
  default     = "../id_rsa"
}

variable "environment" {
  description = "Deployment environment"
  default     = "Development"
}

variable "backend_port" {
  description = "Backend application port"
  default     = 3000
}

variable "frontend_port" {
  description = "Frontend application port"
  default     = 80
}

variable "vm_size" {
  description = "Azure VM size"
  default     = "Standard_B1s"
}
