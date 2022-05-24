resource "github_repository" "terraform_local" {
  name        = var.git_repo_name_terraform_local
  description = "GitHub settings"

  visibility = "public"
}

resource "github_repository" "terraform_azure" {
  name        = var.git_repo_name_terraform_azure
  description = "Azure settings"
  
  visibility = "public"
}