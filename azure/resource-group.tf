resource "azurerm_resource_group" "main" {
  name     = var.application_name
  location = var.location
}
