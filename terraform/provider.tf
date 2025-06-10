# Configure Terraform
terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">=3.4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.30.0"
    }
  }
  backend "azurerm" {
    use_oidc             = true
    use_azuread_auth     = true
    tenant_id            = "720b637a-655a-40cf-816a-f22f40755c2c"
    client_id            = "a7c35d02-5523-480f-8e2a-05116a52e0b9"
    storage_account_name = "tfstate076"
    container_name       = "tfstate"
    key                  = "sashakt.terraform.tfstate"
  }
}

# Configure the Azure Active Directory Provider
provider "azuread" {
  tenant_id = "570c8a00-bc2e-466a-918b-a6e4e6326c02"
  client_id = "b45ca867-8cf6-4fe3-9304-9a1f7c8ac234"
  use_oidc  = true
}

