resource "azurerm_windows_virtual_machine" "myvm01" {
  name                = var.virtualmachinename
  resource_group_name = azurerm_resource_group.myterraformgroup.name
  location            = azurerm_resource_group.myterraformgroup.location
  size                = "Standard_F2"
  admin_username      = "adm-aruna"
  admin_password      = "Aruna@123456"
  network_interface_ids = [
    azurerm_network_interface.myterraformnic.id,
  ]

 os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}