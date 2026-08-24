variable "eee" {
  type = map(object({
    public_ip_name = string
    location = string
    resource_group_name = string
    allocation_method = string
    sku = string
  }))
}