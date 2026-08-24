variable "eee" {
  type = map(object({
    public_ip_name = String
    location = String
    resource_group_name = String
    allocation_method = String
    sku = String
  }))
}