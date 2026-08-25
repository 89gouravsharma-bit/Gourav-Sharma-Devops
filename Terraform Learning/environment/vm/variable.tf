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