terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-eastus" # Replace with your resource group name
    storage_account_name = "urbanconnect"               # Replace with your storage account name
    container_name       = "terraform"                  # Replace with your container name
    key                  = "terraform.tfstate"
  }
}
