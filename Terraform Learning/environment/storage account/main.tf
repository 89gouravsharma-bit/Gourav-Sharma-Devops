resource "azurerm_storage_account" "stg1" {
    for_each = var.bbb
    name = each.value.stg_name
    resource_group_name = each.value.resource_group_name
    location = each.value.stg_location
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
  
}