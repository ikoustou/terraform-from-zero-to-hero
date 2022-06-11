# tgw
module "tgw" {
  source = "./modules/tgw"

  amazon_side_asn = var.amazon_side_asn
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"
}

# tgw vpc1 attachment
module "tgw_vpc1_attach_virginia" {
  source = "./modules/tgw_vpc_attach"
  
  subnet_ids         = [module.vpc1_subnet1.subnetid , module.vpc1_subnet2.subnetid]
  transit_gateway_id = module.tgw.tgwid
  vpc_id             = module.vpc1.vpcid

    
}
# tgw vpc1 attachment
module "tgw_vpc2_attach_virginia" {
  source = "./modules/tgw_vpc_attach"
  
  subnet_ids         = [module.vpc2_subnet1.subnetid , module.vpc2_subnet2.subnetid]
  transit_gateway_id = module.tgw.tgwid
  vpc_id             = module.vpc2.vpcid

}

# route to send traffic to TGW inside VPC route tables
# VPC1
module "route-tgw-vpc1-RT1" {
  source = "./modules/route"

  route_table_id            = module.vpc1_rt1_public.rtid
  destination_cidr_block    = var.vpc2_cidr_block       # VPC2 CIDR block destination
  transit_gateway_id        = module.tgw.tgwid
}
module "route-tgw-vpc1-RT2" {
  source = "./modules/route"

  route_table_id            = module.vpc1_rt2_private.rtid
  destination_cidr_block    = var.vpc2_cidr_block       # VPC2 CIDR block destination
  transit_gateway_id        = module.tgw.tgwid
}
# VPC2
module "route-tgw-vpc2-RT1" {
  source = "./modules/route"

  route_table_id            = module.vpc2_rt1_private.rtid
  destination_cidr_block    = var.vpc1_cidr_block       # VPC1 CIDR block destination
  transit_gateway_id        = module.tgw.tgwid
}
module "route-tgw-vpc2-RT2" {
  source = "./modules/route"

  route_table_id            = module.vpc2_rt2_private.rtid
  destination_cidr_block    = var.vpc1_cidr_block       # VPC1 CIDR block destination
  transit_gateway_id        = module.tgw.tgwid
}