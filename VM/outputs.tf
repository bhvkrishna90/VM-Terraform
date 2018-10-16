output "ip_address" {
  value = "${azurerm_network_interface.main.private_ip_address}"
}

output "id" {
  value = "${azurerm_network_interface.main.id}"
}

output "username" {
  value = "${var.username}"
}

output "password" {
  value = "${var.password}"
}

output "hostname" {
  value = "${var.hostname}"
}


