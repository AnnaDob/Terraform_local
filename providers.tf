terraform {
  required_providers {
    github = {
      source  = "integrations/github"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
  }
}
}

// Configure the GitHub Provider
provider "github" {
    token = var.token
}

// Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}