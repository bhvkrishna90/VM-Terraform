
resource "azurerm_public_ip" "vm-pip" {
  name                         = "${var.rg_name}-vm-pip"
  location                     = "${var.location}"
  resource_group_name          = "${var.rg_name}"
  public_ip_address_allocation = "Dynamic"
  idle_timeout_in_minutes      = 30

  tags {
    environment = "dev"
  }
}

resource "azurerm_network_interface" "vmnic" {
  name                = "${var.rg_name}-vm-nic"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
  
  network_security_group_id = "${var.nsg_id}"

  ip_configuration {
    name                          = "ipconfi1"
    subnet_id                     = "${var.sid}"
    private_ip_address_allocation = "dynamic"
    public_ip_address_id          = "${azurerm_public_ip.vm-pip.id}"
    
  }
}

resource "azurerm_virtual_machine" "vm" {
  name                  = "${var.rg_name}-vm"
  location              = "${var.location}"
  resource_group_name   = "${var.rg_name}"
  network_interface_ids = ["${azurerm_network_interface.vmnic.id}"]
  vm_size               = "Standard_DS1_v2"
  

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true
  
  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "${var.hostname}"
    admin_username = "${var.username}"
    admin_password = "${var.password}"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags {
    environment = "dev"
  }
}