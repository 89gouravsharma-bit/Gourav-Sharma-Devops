module "resource_group" {
    source = "../environmnent/resource group"
    aaa = var.aaa
  
}
module "storage_account" {
source = "../environment/storage account"  
depends_on = [ module.resource_group ]
bbb = var.bbb
}
module "vnet" {
    source = "../environmnent/vnet"
    depends_on = [ module.resource_group ]
    ccc = var.ccc
  
}
module "subnets" {
    source = "../environmnent/subnet"
    depends_on = [ module.resource_group,module.vnet ]
    ddd = var.ddd
  
}