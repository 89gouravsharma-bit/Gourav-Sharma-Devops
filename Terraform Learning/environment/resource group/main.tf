resource "azurerm_resource_group" "rg1" {
    for_each = var.aaa
    name = each.value.rg_name
    location = each.value.rg_location
  
}