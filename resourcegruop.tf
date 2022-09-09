resource "azurerm_resource_group" "myterraformgroup" {
  name     = var.resourceGroupName
  location = var.location
}