resource "azurerm_resource_group" "rg_network" {
	location = "West Europe"
	name = "devresgrp"
}

resource "azurerm_virtual_network" "net" {
	address_space = ["10.0.0.0/16"]
	location = "West Europe"
	name = "devnet"
	resource_group_name = "${azurerm_resource_group.rg_network.name}"

	subnet {
		name = "subnet1"
		address_prefixes = "10.0.1.0/24"
	}

	subnet {
		name = "subnet2"
		address_prefixes = "10.0.2.0/24"
	}
}

