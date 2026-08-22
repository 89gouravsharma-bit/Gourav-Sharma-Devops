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
    accoubt_replication_type = string
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
    subnet_name           = string
    resource_group_name   = string
    virttual_network_name = string
    address_prefixes      = list(string)
  }))

}