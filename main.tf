module "rg" {
  source = "./RG"
  prefix = "${var.prefix}"
  location = "${var.location}"
}

module "vnet" {
  source = "./VNET"
  rg_name = "${module.rg.rg_name}"
  location = "${module.rg.rg_loc}"
  prefix = "${module.rg.prefix}"
}

module "vm" {
  source = "./VM"
  hostname = "${var.hostname}"
  username = "${var.username}"
  password = "${var.password}"
  rg_name = "${module.rg.rg_name}"
  location = "${module.rg.rg_loc}"
  prefix = "${module.rg.prefix}"
  sn_id = "${module.vnet.subnet_id}"
}
