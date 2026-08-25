data "azurerm_network_interface" "nic" {
  for_each = var.hhh

  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}
resource "azurerm_virtual_linux_machine" "vm" {
    for_each = var.hhh
    name = each.value.vm_name
    location = each.value.location
    resource_group_name = each.value.resource_group_name

    vm_size  = each.value.vm_size
    admin_username = each.value.admin_username

    network_interface_ids = [data.azurerm_network_interface.nic[each.key].id]

    admin_ssh_key {
        username = each.value.admin_usrername
        
       public_key = file("~/.ssh/id_rsa.pub")
    }
    os_disk {
        caching ="ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    source_image_reference {
        publisher = "Canonical"
        offer = "ubuntu-24_04-lts"
        sku = "server"
        version = "latest"
    }
  
}