resource "azurerm_virtual_network" "octvnet" {

  name                = var.vnetdetails.name
  location            = var.rgdetails.location
  resource_group_name = var.rgdetails.name
  address_space       = var.vnetdetails.address_space
  tags = {
    environment       = "Development"
  }
  depends_on = [
    azurerm_resource_group.octrg
  ]
}

resource "azurerm_subnet" "vnetsubnets" {

  count                = length(var.subnet_details.names)
  name                 = var.subnet_details.names[count.index]
  resource_group_name  = var.rgdetails.name
  virtual_network_name = var.vnetdetails.name
  address_prefixes     = [cidrsubnet(var.vnetdetails.address_space[0],8,count.index)]
  depends_on = [
    azurerm_resource_group.octrg,
    azurerm_virtual_network.octvnet
  ]
  }
