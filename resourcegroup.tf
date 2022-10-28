resource "azurerm_resource_group" "octrg" {

  name     = var.rgdetails.name
  location = var.rgdetails.location
}