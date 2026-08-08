resource "azurerm_subnet" "bastion" {

  name                = "AzureBastionSubnet"
  resource_group_name = azurerm_resource_group.rg.name

  virtual_network_name = azurerm_virtual_network.vnet["vnet1"].name

  address_prefixes = [
    "10.0.10.0/26"
  ]
}
