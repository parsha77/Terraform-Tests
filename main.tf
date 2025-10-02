terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "parsha-test-rg"
  location = "canadacentral"
  tags = {
    Business-Unit       = "IT"
    Confidentiality     = "Internal"
    Cost-Center         = "12345"
    Environment         = "dev"
    Organization        = "Translink"
    Project-Name        = "parsha-test"
    Requestor           = "kkhatibi"
    Risk-Rating         = "Medium"
    Service-Level       = "Standard"
    SLA                 = "99.9%"
    Solution-ID         = "parsha-rg-01"
    Solution-Name       = "parsha-solution"
    Solution-Version    = "1.0.0"
    Tech-Owner          = "tech-owner@example.com"
    Tech-Support-Queue  = "support@example.com"
    Owner               = "parsha"
  }
}

# Storage account within the resource group (hard-coded name)
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Business-Unit       = "IT"
    Confidentiality     = "Internal"
    Cost-Center         = "12345"
    Environment         = "dev"
    Organization        = "Translink"
    Project-Name        = "parsha-test"
    Requestor           = "kkhatibi"
    Risk-Rating         = "Medium"
    Service-Level       = "Standard"
    SLA                 = "99.9%"
    Solution-ID         = "parsha-rg-01"
    Solution-Name       = "parsha-solution"
    Solution-Version    = "1.0.0"
    Tech-Owner          = "tech-owner@example.com"
    Tech-Support-Queue  = "support@example.com"
    Owner               = "parsha"
  }
}
