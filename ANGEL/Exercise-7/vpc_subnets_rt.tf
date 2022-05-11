module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc_cidr_block
  tags = var.vpc_tags
}

module "subnet_public" {
  source = "./modules/subnet"

  vpc_id = module.vpc.instance.id
  subnet_cidr_block = var.subnet_public_cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = var.subnet_public_tags
  availability_zone       = var.availability_zone1
}

module "subnet_private" {
  source = "./modules/subnet"

  vpc_id =  module.vpc.instance.id
  subnet_cidr_block = var.subnet_private_cidr_block
  tags = var.subnet_private_tags
  availability_zone       = var.availability_zone2
}

module "route_table_public" {
  source = "./modules/route_table"

  vpc_id =  module.vpc.instance.id
  tags = var.route_table_public_tags
}

module "route_table_private" {
  source = "./modules/route_table"

  vpc_id =  module.vpc.instance.id
  tags = var.route_table_private_tags
}

module "route_table_association_public" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_public.instance.id
  subnet_id = module.subnet_public.instance.id
}

module "route_table_association_private" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_private.instance.id
  subnet_id = module.subnet_private.instance.id
}

#vpc2
module "vpc2" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc_cidr_block2
  tags = var.vpc_tags
}

module "subnet_public2" {
  source = "./modules/subnet"

  vpc_id = module.vpc2.instance.id
  subnet_cidr_block = var.subnet_public_cidr_block2
  tags = var.subnet_public_tags
  availability_zone       = var.availability_zone1
}

module "subnet_private2" {
  source = "./modules/subnet"

  vpc_id =  module.vpc2.instance.id
  subnet_cidr_block = var.subnet_private_cidr_block2
  tags = var.subnet_private_tags
  availability_zone       = var.availability_zone2
}

module "route_table_public2" {
  source = "./modules/route_table"

  vpc_id =  module.vpc2.instance.id
  tags = var.route_table_public_tags
}

module "route_table_private2" {
  source = "./modules/route_table"

  vpc_id =  module.vpc2.instance.id
  tags = var.route_table_private_tags
}

module "route_table_association_public2" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_public2.instance.id
  subnet_id = module.subnet_public2.instance.id
}

module "route_table_association_private2" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_private2.instance.id
  subnet_id = module.subnet_private2.instance.id
}

#transit gateway
module "transit_gateway" {
  source = "./modules/transit_gateway"

  amazon_side_asn = var.amazon_side_asn
}


module "transit_gateway_attach_vpc1" {
  source = "./modules/transit_gateway_vpc_attachment"
  
  subnet_ids         = [module.subnet_public.instance.id , module.subnet_private.instance.id]
  transit_gateway_id = module.transit_gateway.instance.id
  vpc_id             = module.vpc.instance.id
    
}

module "transit_gateway_attach_vpc2" {
  source = "./modules/transit_gateway_vpc_attachment"
  
  subnet_ids         = [module.subnet_public2.instance.id , module.subnet_private2.instance.id]
  transit_gateway_id = module.transit_gateway.instance.id
  vpc_id             = module.vpc2.instance.id
    
}

module "route_peering1" {
  source = "./modules/route"
  route_table_id = module.route_table_public.instance.id
  destination_cidr_block = var.vpc_cidr_block2
  transit_gateway_id  = module.transit_gateway.instance.id
}

module "route_peering2" {
  source = "./modules/route"
  route_table_id = module.route_table_public2.instance.id
  destination_cidr_block = var.vpc_cidr_block
  transit_gateway_id  = module.transit_gateway.instance.id
}

module "route_peering3" {
  source = "./modules/route"
  route_table_id = module.route_table_private.instance.id
  destination_cidr_block = var.vpc_cidr_block2
  transit_gateway_id  = module.transit_gateway.instance.id
}

module "route_peering4" {
  source = "./modules/route"
  route_table_id = module.route_table_private2.instance.id
  destination_cidr_block = var.vpc_cidr_block
  transit_gateway_id  = module.transit_gateway.instance.id
}

