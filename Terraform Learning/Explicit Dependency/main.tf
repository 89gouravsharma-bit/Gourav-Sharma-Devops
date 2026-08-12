resource "azurerm_resource_group" "rg1" {
    name = "rg_gourav"
    location = "centralindia"
  
}
resource "azurerm_storage_account" "stg1" {
    depends_on = [ azurerm_resource_group.rg1 ]
    name = "stg12092"
    resource_group_name = "rg_gourav"
    location = "centralindia"
    account_tier = "Standard"
    account_replication_type = "LRS"
  
}