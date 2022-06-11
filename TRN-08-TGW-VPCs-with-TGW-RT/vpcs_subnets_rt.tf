# --- VPC1 Configuration ----
module "vpc1" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc1_cidr_block
}

module "vpc1_subnet1" {
  source = "./modules/subnet"
  vpc_id     = module.vpc1.vpcid
  subnet_cidr_block = var.vpc1_subnet1_cidr_block

  availability_zone       = var.availability_zone1
  tags                    = var.vpc1_subnet1_tags
  map_public_ip_on_launch = var.vpc1_subnet1_map_public_ip_on_launch 
}

module "vpc1_subnet2" {
  source = "./modules/subnet"
  vpc_id     = module.vpc1.vpcid
  subnet_cidr_block = var.vpc1_subnet2_cidr_block

  availability_zone       = var.availability_zone2
  tags                    = var.vpc1_subnet2_tags
}

module "vpc1_rt1_public" {
 source = "./modules/rt"

 vpc_id = module.vpc1.vpcid


  tags = {
    Name = var.vpc1_rt1_public_name
  }
}

module "vcp1_rt1_subnet1_association" {
  source = "./modules/rt_association"

  subnet_id      = module.vpc1_subnet1.subnetid
  route_table_id = module.vpc1_rt1_public.rtid
  
}

module "vpc1_rt2_private" {
 source = "./modules/rt"

 vpc_id = module.vpc1.vpcid


  tags = {
    Name = var.vpc1_rt2_private_name
  }
}

module "vcp1_rt2_subnet2_association" {
  source = "./modules/rt_association"

  subnet_id      = module.vpc1_subnet2.subnetid
  route_table_id = module.vpc1_rt2_private.rtid
  
}
# --- VPC2 Configuration ----
module "vpc2" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc2_cidr_block
}

module "vpc2_subnet1" {
  source = "./modules/subnet"
  vpc_id     = module.vpc2.vpcid
  subnet_cidr_block = var.vpc2_subnet1_cidr_block

  availability_zone       = var.availability_zone1
  tags                    = var.vpc2_subnet1_tags
  
}

module "vpc2_subnet2" {
  source = "./modules/subnet"
  vpc_id     = module.vpc2.vpcid
  subnet_cidr_block = var.vpc2_subnet2_cidr_block

  availability_zone       = var.availability_zone2
  tags                    = var.vpc2_subnet2_tags
}

module "vpc2_rt1_private" {
 source = "./modules/rt"

 vpc_id = module.vpc2.vpcid


  tags = {
    Name = var.vpc2_rt1_private_name
  }
}

module "vcp2_rt1_subnet1_association" {
  source = "./modules/rt_association"

  subnet_id      = module.vpc2_subnet1.subnetid
  route_table_id = module.vpc2_rt1_private.rtid
  
}

module "vpc2_rt2_private" {
 source = "./modules/rt"

 vpc_id = module.vpc2.vpcid


  tags = {
    Name = var.vpc2_rt2_private_name
  }
}

module "vcp2_rt2_subnet2_association" {
  source = "./modules/rt_association"

  subnet_id      = module.vpc2_subnet2.subnetid
  route_table_id = module.vpc2_rt2_private.rtid
  
}

