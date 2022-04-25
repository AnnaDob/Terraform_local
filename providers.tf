terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.2.0"
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