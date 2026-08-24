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