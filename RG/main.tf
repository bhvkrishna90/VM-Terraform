#Create Resource Group in Azure
resource "azurerm_resource_group" "resourcegroup" {
  name     = "${var.prefix}-resources"
  location = "${var.location}"
  tags {
    environment = "dev"
  }
}