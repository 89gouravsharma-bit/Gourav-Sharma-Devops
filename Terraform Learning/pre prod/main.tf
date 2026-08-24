module "resource_group" {
  source = "../environment/resource group"
  aaa    = var.aaa

}
module "storage_account" {
  source     = "../environment/storage account"
  depends_on = [module.resource_group]
  bbb        = var.bbb
}
module "vnet" {
  source     = "../environment/vnet"
  depends_on = [module.resource_group]
  ccc        = var.ccc

}
module "subnets" {
  source     = "../environment/subnet"
  depends_on = [module.resource_group, module.vnet]
  ddd        = var.ddd

}
module "public_ip" {
  source = "../environment/public ip"
  depends_on = [ module.resource_group ]
  eee = var.eee
  
}

module "nsg" {
  source = "../environment/NSG"
  depends_on = [ module.resource_group ]
  fff = var.fff
  
}