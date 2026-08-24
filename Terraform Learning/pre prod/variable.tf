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
    public_ip_name = String
    location = String
    resource_group_name = String
    allocation_method = String
    sku = String
  }))
}

variable "fff" {
    type = map(object({
      nsg_name = String
      nsg_location = String
      resource_group_name = String
      rule_name =String
      priority = number
      direction =String
      access = String
      protocol = String
      source_port_range = String
      destination_port_range = String
      source_address_prefix = String
      destination_address_prefix = String

    }))
  
}