resource "azurerm_resource_group" "rg1" {
    name = "rg_gourav"
    location = "centralindia"
  
}
resource "azurerm_storage_account" "stg1" {
    name = "stg12091"
    resource_group_name = azurerm_resource_group.rg1.name
    location = "centralindia"
    account_tier = "Standard"
    account_replication_type = "LRS"
  
}