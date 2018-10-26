module "rg" {
  source = ".\\RG"
  prefix = "${var.prefix}"
  location = "${var.location}"
}

module "vnet" {
  source = ".\\VNET"
  location = "${var.location}"
  vnetname = "${var.prefix}"
  rg_name = "${module.rg.rg_name}"
  subnetname = "${var.prefix}"  
}


module "nsg" {
  source = ".\\NSG"
  location = "${module.rg.rg_loc}"
  nsgname = "${var.prefix}"
  rg_name = "${module.rg.rg_name}"
  
}

module "vm" {
  source = ".\\VM"
  hostname = "${var.hostname}"
  username = "${var.username}"
  password = "${var.password}"
  rg_name = "${module.rg.rg_name}"
  location = "${module.rg.rg_loc}"
  sid = "${module.vnet.subnet_id}"
  nsg_id = "${module.nsg.nsgid}"
}
