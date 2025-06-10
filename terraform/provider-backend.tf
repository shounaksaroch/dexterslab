terraform {
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

