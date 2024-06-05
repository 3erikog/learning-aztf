# The configuration block you provided is part of a Terraform configuration file
# and is used to specify which provider plugins are required for your Terraform project.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}