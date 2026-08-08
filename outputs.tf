output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet1_id" {
  value = azurerm_virtual_network.vnet["vnet1"].id
}

output "vnet2_id" {
  value = azurerm_virtual_network.vnet["vnet2"].id
}

output "bastion_name" {
  value = azurerm_bastion_host.bastion.name
}