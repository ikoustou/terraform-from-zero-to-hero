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

