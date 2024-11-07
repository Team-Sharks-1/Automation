# terraform {
#   backend "azurerm" {
#     resource_group_name   = "myapp-rg"                  # Replace with your resource group name
#     storage_account_name  = "myappterraformstate"       # Replace with your storage account name
#     container_name        = "terraform-state"           # Replace with your container name
#     key                   = "terraform.tfstate"
#   }
# }
