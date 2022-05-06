data "azuread_client_config" "current" {}

resource "azuread_application" "terraform_app" {
  display_name = format("terraform_app_%s", local.setup_name)
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "terraform_spn" {
  application_id               = azuread_application.terraform_app.application_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]
}

resource "azurerm_role_assignment" "terraform_spn_role" {
  scope                = azurerm_resource_group.main.id
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.terraform_spn.object_id
}

resource "azuread_service_principal_password" "terraform_spn_passwd" {
  service_principal_id = azuread_service_principal.terraform_spn.object_id
}