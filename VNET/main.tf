#Deploy azure VNET with one Subnet
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnetname}-network"
  address_space       = ["10.0.0.0/16"]
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.subnetname}-subnet1"
  resource_group_name  = "${var.rg_name}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  address_prefix       = "10.0.2.0/24"
}