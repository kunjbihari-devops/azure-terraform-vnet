resource "azurerm_virtual_network" "vnet" {

  for_each = {
    vnet1 = "10.0.0.0/16"
    vnet2 = "10.1.0.0/16"
  }

  name                = each.key
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  address_space = [
    each.value
  ]
}

resource "azurerm_subnet" "subnet" {

  for_each = {
    subnet1 = {
      vnet = "vnet1"
      cidr = "10.0.1.0/24"
    }

    subnet2 = {
      vnet = "vnet2"
      cidr = "10.1.1.0/24"
    }
  }

  name                = each.key
  resource_group_name = azurerm_resource_group.rg.name

  virtual_network_name = each.value.vnet

  address_prefixes = [
    each.value.cidr
  ]
}