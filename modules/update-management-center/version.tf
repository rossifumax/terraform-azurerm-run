terraform {
  required_version = ">= 1.1"
  required_providers {
    # tflint-ignore: terraform_unused_required_providers
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.22"
    }
    # tflint-ignore: terraform_unused_required_providers
    azapi = {
      source  = "azure/azapi"
      version = "~> 0.1"
    }
  }
}
