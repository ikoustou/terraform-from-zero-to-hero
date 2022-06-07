#Transit gateway
module "transit_gateway" {
  source = "./modules/transit_gateway"

  amazon_side_asn = var.amazon_side_asn
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"
}


module "transit_gateway_attach_vpc1" {
  source = "./modules/transit_gateway_vpc_attachment"
  
  subnet_ids         = [module.vpc1_subnet1.instance.id , module.vpc1_subnet2.instance.id]
  transit_gateway_id = module.transit_gateway.instance.id
  vpc_id             = module.vpc1.instance.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
    
}

module "transit_gateway_attach_vpc2" {
  source = "./modules/transit_gateway_vpc_attachment"
  
  subnet_ids         = [module.vpc2_subnet1.instance.id , module.vpc2_subnet2.instance.id]
  transit_gateway_id = module.transit_gateway.instance.id
  vpc_id             = module.vpc2.instance.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
    
}

module "route_peering1" {
  source = "./modules/route"
  route_table_id = module.vpc1_route_table1.instance.id
  destination_cidr_block = var.vpc2_cidr_block
  transit_gateway_id  = module.transit_gateway.instance.id
}

module "route_peering2" {
  source = "./modules/route"
  route_table_id = module.vpc2_route_table1.instance.id
  destination_cidr_block = var.vpc1_cidr_block
  transit_gateway_id  = module.transit_gateway.instance.id
}

module "route_peering3" {
  source = "./modules/route"
  route_table_id = module.vpc1_route_table2.instance.id
  destination_cidr_block = var.vpc2_cidr_block
  transit_gateway_id  = module.transit_gateway.instance.id
}

module "route_peering4" {
  source = "./modules/route"
  route_table_id = module.vpc2_route_table2.instance.id
  destination_cidr_block = var.vpc1_cidr_block
  transit_gateway_id  = module.transit_gateway.instance.id
}


#Transit Gateway Routes
module "transit_gateway_route_table_vpc1" {
  source = "./modules/transit_gateway_route_table"

  transit_gateway_id = module.transit_gateway.instance.id
}

module "transit_gateway_association_vpc1" {
  source = "./modules/transit_gateway_route_table_association"

  transit_gateway_attachment_id  = module.transit_gateway_attach_vpc1.instance.id
  transit_gateway_route_table_id = module.transit_gateway_route_table_vpc1.instance.id
}

module "transit_gateway_propagation_vpc1" {
  source = "./modules/transit_gateway_route_table_propagation"
  
  transit_gateway_route_table_id = module.transit_gateway_route_table_vpc1.instance.id
  transit_gateway_attachment_id  = module.transit_gateway_attach_vpc2.instance.id
}


module "transit_gateway_route_table_vpc2" {
  source = "./modules/transit_gateway_route_table"

  transit_gateway_id = module.transit_gateway.instance.id
}

module "transit_gateway_association_vpc2" {
  source = "./modules/transit_gateway_route_table_association"

  transit_gateway_attachment_id  = module.transit_gateway_attach_vpc2.instance.id
  transit_gateway_route_table_id = module.transit_gateway_route_table_vpc2.instance.id
}

module "transit_gateway_propagation_vpc2" {
  source = "./modules/transit_gateway_route_table_propagation"
  
  transit_gateway_route_table_id = module.transit_gateway_route_table_vpc2.instance.id
  transit_gateway_attachment_id  = module.transit_gateway_attach_vpc1.instance.id
}
