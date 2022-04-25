resource "github_repository" "terraform_local" {
  name        = "terraform_local"
  description = "GitHub settings"

  visibility = "public"
}

resource "github_repository" "terraform_azure" {
  name        = "terraform_azure"
  description = "Azure settings"
  
  visibility = "public"
}