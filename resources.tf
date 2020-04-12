resource "azurerm_resource_group" "andrey-tf-rg"{
    name = "andrey-tf-rg"
    location = "australiaeast"
}

resource "azurerm_virtual_network" "andrey-tf-vnet"{
    name = "andrey-tf-vnet"
    location = azurerm_resource_group.andrey-tf-rg.location
    resource_group_name = azurerm_resource_group.andrey-tf-rg.name
    address_space = ["10.0.0.0/16"]
}
