aaa = {
  abc = {
    rg_name     = "rg_gourav"
    rg_location = "westus"
  }
}

bbb = {
  bac = {
    stg_name                 = "stgsatka123"
    resource_group_name      = "rg_gourav"
    stg_location             = "westus"
    account_tier             = "Standard"
    account_replication_type = "LRS"


  }
  bab = {
    stg_name                 = "stgsatka129"
    resource_group_name      = "rg_gourav"
    stg_location             = "westus"
    account_tier             = "Standard"
    account_replication_type = "LRS"


  }
}

ccc = {
  cab = {
    vnet_name           = "vnet1"
    vnet_location       = "westus"
    resource_group_name = "rg_gourav"
    address_space       = ["10.0.0.0/16"]
  }
  cba = {
    vnet_name           = "vnet2"
    vnet_location       = "westus"
    resource_group_name = "rg_gourav"
    address_space       = ["value"]

  }
  abc = {
    vnet_name           = "vnet3"
    vnet_location       = "westus"
    resource_group_name = "rg_gourav"
    address_space       = ["10.2.0.0/16"]
  }
}

ddd = {
  dab = {
    subnet_name          = "frontend_subnet"
    resource_group_name  = "rg_gourav"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.0.0/24"]
  }
  dac = {
    subnet_name          = "backened_subnet"
    resource_group_name  = "rg_gourav"
    virtual_network_name = "vnet2"
    address_prefixes     = ["10.1.0.0/24"]
  }
  adb = {
    subnet_name          = "AzureBastionSubnet"
    resource_group_name  = "rg_gourav"
    virtual_network_name = "vnet2"
    address_prefixes     = ["10.2.0.0/28"]
  }
}