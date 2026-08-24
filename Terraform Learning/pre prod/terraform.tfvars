aaa = {
  abc = {
    rg_name     = "rg_gourav"
    rg_location = "westus"
  }
}

bbb = {
  bac = {
    stg_name                 = "stgsatka122"
    resource_group_name      = "rg_gourav"
    stg_location             = "westus"
    account_tier             = "Standard"
    account_replication_type = "LRS"


  }
  bab = {
    stg_name                 = "stgsatka123"
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
    address_space       = ["10.0.1.0/16"]
  }
  abc = {
    vnet_name           = "vnet3"
    vnet_location       = "westus"
    resource_group_name = "rg_gourav"
    address_space       = ["10.1.0.0/16"]
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
    address_prefixes     = ["10.0.1.0/24"]
  }
  adb = {
    subnet_name          = "AzureBastionSubnet"
    resource_group_name  = "rg_gourav"
    virtual_network_name = "vnet2"
    address_prefixes     = ["10.1.0.0/28"]
  }
}
eee = {
  runner_pip = {
    public_ip_name      = "pip_github_runer"
    resource_group_name = "rg_gourav"
    location            = "westus"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}
fff = {
  runner_nsg = {

    nsg_name                   = "nsg_github_runner"
    nsg_location               = "westus"
    resource_group_name        = "rg_gourav"
    rule_name                  = "Allow-SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }

}

ggg = {
  runner_nic = {
    subnet_name          = "frontend_subnet"
    virtual_network_name = "vnet1"
    public_ip_name       = "pip_github_runer"
    resource_group_name  = "rg_gourav"
    nic_name             = "nic_github_runner"
    location             = "westus"
    nsg_name             = "nsg_github_runner"

  }
}