# Configure the Azure provider and set the TFSTATE file
terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 3.0.2"
        }
    }
    backend "azurerm" {
        resource_group_name  = "rgrp_uks_terraform_state"
        storage_account_name = "stgterraformstateuks"
        container_name       = "terraform-state"
        key                  = "terraform.tfstate"
    }
  required_version = ">= 1.1.0"
}

# Set the provider to Azure RM
provider "azurerm" {
  features {}
}