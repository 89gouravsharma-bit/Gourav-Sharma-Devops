data "azurerm_network_security_group" "nsg" {
  for_each = var.ggg
  name = each.value.nsg_name
  resource_group_name = each.value.resource_group_name
  
}
data "azurerm_subnet" "subnet" {
    for_each = var.ggg
    name =each.value.subnet_name
    virtual_network_name = each.value.virtual_network_name
    resource_group_name = each.value.resource_group_name
}
data "azurerm_public_ip" "public_ip" {
    for_each = var.ggg
    name = each.value.public_ip_name
    resource_group_name = each.value.resource_group_name
  
}
resource "azurerm_network_interface" "nic" {
    for_each = var.ggg
  name = each.value.nic_name
  location = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name = "internal"
    subnet_id = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.public_ip[each.key].id
    
  }
}

resource "azurerm_network_interface_security_group_association" "nsg_attach" {
  for_each = var.ggg
  network_interface_id = azurerm_network_interface.nic[each.value].id
  network_security_group_id = data.azurerm_network_security_group.nsg[each.key].id
  
}