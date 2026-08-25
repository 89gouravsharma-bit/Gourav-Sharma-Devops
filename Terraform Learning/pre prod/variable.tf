variable "aaa" {
  type = map(object({
    rg_name     = string
    rg_location = string
  }))
}

variable "bbb" {
  type = map(object({
    stg_name                 = string
    resource_group_name      = string
    stg_location             = string
    account_tier             = string
    account_replication_type = string
  }))

}
variable "ccc" {
  type = map(object({
    vnet_name           = string
    vnet_location       = string
    resource_group_name = string
    address_space       = list(string)
  }))

}

variable "ddd" {
  type = map(object({
    subnet_name          = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))

}

variable "eee" {
  type = map(object({
    public_ip_name      = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
  }))
}

variable "fff" {
  type = map(object({
    nsg_name                   = string
    nsg_location               = string
    resource_group_name        = string
    rule_name                  = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string

  }))

}

variable "ggg" {
  type = map(object({
    nic_name             = string
    location             = string
    resource_group_name  = string
    subnet_name          = string
    virtual_network_name = string
    public_ip_name       = string
    nsg_name             = string
  }))

}

variable "hhh" {
  type = map(object({
    vm_name             = string
    location            = string
    resource_group_name = string

    nic_name = string

    vm_size        = string
    admin_username = string
  }))
}