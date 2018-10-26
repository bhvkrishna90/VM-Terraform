output "ip_address" {
  value = "${azurerm_network_interface.vmnic.private_ip_address}"
}

output "id" {
  value = "${azurerm_network_interface.vmnic.id}"
}

output "hostname" {
  value = "${var.hostname}"
}

output "username" {
  value = "${var.username}"
}

output "password" {
  value = "${var.password}"
}
output "vm-pip" {
  value = "${azurerm_public_ip.vm-pip.ip_address}"
}

output "vm-id" {
  value = "${azurerm_virtual_machine.vm.id}"
}