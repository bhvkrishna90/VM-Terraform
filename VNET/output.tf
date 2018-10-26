#output values of vnet

output "subnet_name" {
  value = "${azurerm_subnet.subnet.name}"
}

output "subnet_id" {
  value = "${azurerm_subnet.subnet.id}"
}

output "vnet_name" {
  value = "${azurerm_virtual_network.vnet.name}"
}

output "vnet_id" {
  value = "${azurerm_virtual_network.vnet.id}"
}

