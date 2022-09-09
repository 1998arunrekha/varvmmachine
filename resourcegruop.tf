resource "azurerm_resource_group" "myterraformgroup" {
  name     = var.resourcegroupename
  location = var.location
}