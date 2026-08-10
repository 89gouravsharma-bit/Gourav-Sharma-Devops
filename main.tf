resource "azurerm_resource_group" "rg1" {
  for_each = var.aaa
    name = each.value.rg_name
  location = each.value.rg_location
}

resource "azurerm_storage_account" "stg1" {
  for_each = var.bbb
    name = each.value.name
    location = each.value.location
    resource_group_name = azurerm_resource_group.rg1.name
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type

  
}