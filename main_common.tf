# Resource Group
resource "azurerm_resource_group" "main" {
  name     = "${var.PROJECT}${var.INSTANCE}${var.ENVIRONMENT}${random_integer.random_id.result}-rg"
  location = "${var.REGION}"

  tags = {
    project = "${var.PROJECT}"
    instance = "${var.INSTANCE}"
    environment = "${var.ENVIRONMENT}"
  }
}

resource "random_integer" "random_id" {
  min = 100
  max = 999
}

