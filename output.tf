output "username" {
  value = "${var.username}"
}
output "rg_name" {
  value = "${module.rg.rg_name}"
}

output "rg_id" {
  value = "${module.rg.rg_id}"
}

output "rg_loc" {
  value = "${module.rg.rg_loc}"
}

output "prefix" {
  value = "${module.rg.prefix}"
}

output "subnet_name" {
  value = "${module.vnet.subnet_name}"
}

output "subnet_id" {
  value = "${module.vnet.subnet_id}"
}

output "vnet_name" {
  value = "${module.vnet.vnet_name}"
}

output "vnet_id" {
  value = "${module.vnet.vnet_id}"
}

output "vm-pip" {
  value = "${module.vm.vm-pip}"
}


