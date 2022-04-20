resource "github_repository" "Terraform_local" {
  name        = "Terraform_local"
  description = "GitHub settings"

  visibility = "public"
}

resource "github_repository" "Terraform_Azure" {
  name        = "Terraform_Azure"
  description = "Azure settings"
  
  visibility = "public"
}