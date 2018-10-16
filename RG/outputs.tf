#defind Resource Group Outputs

output "rg_id" {
  value = "${azurerm_resource_group.resourcegroup.id}"
}

output "rg_loc" {
  value = "${azurerm_resource_group.resourcegroup.location}"
}

output "rg_name" {
  value = "${azurerm_resource_group.resourcegroup.name}"
}

output "prefix" {
  value = "${var.prefix}"
}


