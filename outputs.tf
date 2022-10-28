output "resouregrpname" {
  value = azurerm_resource_group.octrg.name
}

output "location" {
  value = azurerm_resource_group.octrg.location

}

output "vnetid" {
  value = azurerm_virtual_network.octvnet.id
}

output "vnetname" {
  value = azurerm_virtual_network.octvnet.name
}

/*output "subnets" {
  value = azurerm_subnet.vnetsubnets

}
*/
output "subnets_count" {
  value = length(azurerm_subnet.vnetsubnets)

}
