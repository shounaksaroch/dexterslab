# Configure Terraform
terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">=3.4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.32.0"
    }
  }
}

# Configure the Azure Active Directory Provider
provider "azuread" {
  tenant_id = "570c8a00-bc2e-466a-918b-a6e4e6326c02"
  client_id = "b45ca867-8cf6-4fe3-9304-9a1f7c8ac234"
  use_oidc  = true
}
