module "vpc1" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc1_cidr_block
  tags = var.vpc1_tags
}

module "vpc1_subnet1" {
  source = "./modules/subnet"

  vpc_id = module.vpc1.instance.id
  subnet_cidr_block = var.vpc1_subnet1_cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = var.subnet_tags
  availability_zone       = var.availability_zone1
}

module "vpc1_subnet2" {
  source = "./modules/subnet"

  vpc_id =  module.vpc1.instance.id
  subnet_cidr_block = var.vpc1_subnet2_cidr_block
  tags = var.subnet_tags
  availability_zone       = var.availability_zone2
}

module "vpc1_route_table1" {
  source = "./modules/route_table"

  vpc_id =  module.vpc1.instance.id
  tags = var.route_table_tags
}

module "vpc1_route_table2" {
  source = "./modules/route_table"

  vpc_id =  module.vpc1.instance.id
  tags = var.route_table_tags
}

module "vpc1_route_table_association1" {
  source = "./modules/route_table_association"
  route_table_id = module.vpc1_route_table1.instance.id
  subnet_id = module.vpc1_subnet1.instance.id
}

module "vpc1_route_table_association2" {
  source = "./modules/route_table_association"
  route_table_id = module.vpc1_route_table2.instance.id
  subnet_id = module.vpc1_subnet2.instance.id
}

#vpc2
module "vpc2" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc2_cidr_block
  tags = var.vpc2_tags
}

module "vpc2_subnet1" {
  source = "./modules/subnet"

  vpc_id = module.vpc2.instance.id
  subnet_cidr_block = var.vpc2_subnet1_cidr_block
  tags = var.subnet_tags
  availability_zone       = var.availability_zone1
}

module "vpc2_subnet2" {
  source = "./modules/subnet"

  vpc_id =  module.vpc2.instance.id
  subnet_cidr_block = var.vpc2_subnet2_cidr_block
  tags = var.subnet_tags
  availability_zone       = var.availability_zone2
}

module "vpc2_route_table1" {
  source = "./modules/route_table"

  vpc_id =  module.vpc2.instance.id
  tags = var.route_table_tags
}

module "vpc2_route_table2" {
  source = "./modules/route_table"

  vpc_id =  module.vpc2.instance.id
  tags = var.route_table_tags
}

module "vpc2_route_table_association1" {
  source = "./modules/route_table_association"
  route_table_id = module.vpc2_route_table1.instance.id
  subnet_id = module.vpc2_subnet1.instance.id
}

module "vpc2_route_table_association2" {
  source = "./modules/route_table_association"
  route_table_id = module.vpc2_route_table2.instance.id
  subnet_id = module.vpc2_subnet2.instance.id
}

#transit gateway
module "transit_gateway" {
  source = "./modules/transit_gateway"

  amazon_side_asn = var.amazon_side_asn
}


module "transit_gateway_attach_vpc1" {
  source = "./modules/transit_gateway_vpc_attachment"
  
  subnet_ids         = [module.vpc1_subnet1.instance.id , module.vpc1_subnet2.instance.id]
  transit_gateway_id = module.transit_gateway.instance.id
  vpc_id             = module.vpc1.instance.id
    
}

module "transit_gateway_attach_vpc2" {
  source = "./modules/transit_gateway_vpc_attachment"
  
  subnet_ids         = [module.vpc2_subnet1.instance.id , module.vpc2_subnet2.instance.id]
  transit_gateway_id = module.transit_gateway.instance.id
  vpc_id             = module.vpc2.instance.id
    
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

