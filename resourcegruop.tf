resource "azurerm_resource_group" "myterraformgroup" {
  name     = var.resourcgroupename
  location = var.location
}