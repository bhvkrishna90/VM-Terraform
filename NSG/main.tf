resource "azurerm_network_security_group" "vmnsg" {
  name                = "${var.nsgname}-nsg"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"

  security_rule {
    name                       = "All-Traffic-in"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "All-Traffic-out"
    priority                   = 100
    direction                  = "outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  tags {
    environment = "Production"
  }
}