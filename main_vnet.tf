resource "azurerm_virtual_network" "vnet" {
  name                = "${var.VNET_NAME}"
  location            = "${azurerm_resource_group.main.location}"
  address_space       = ["${var.VNET_ADDR_SPACE}"]
  resource_group_name = "${azurerm_resource_group.main.name}"
  dns_servers         = "${var.DNS_SERVERS}"
}

resource "azurerm_subnet" "subnet" {
  name                      = "${var.SUBNET_NAME}"
  virtual_network_name      = "${azurerm_virtual_network.vnet.name}"
  resource_group_name       = "${azurerm_resource_group.main.name}"
  address_prefix            = "${var.SUBNET_PREFIX}"
}
