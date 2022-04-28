module "igw" {
  source = "./modules/igw"

  vpc_id = module.vpc.vpc_id
  igw_name = var.igw_name
}

module "route" {
  source = "./modules/route"

  route_table_id = module.route_table_public.route_table_id
  destination_cidr_block = var.destination_cidr_block
  gateway_id = module.igw.igw_id
}

module "security_group" {
  source = "./modules/security_group"

  vpc_id = module.vpc.vpc_id
  from_port = var.from_port
  to_port = var.to_port
  protocol = var.protocol
  cidr_blocks = var.cidr_blocks
}

module "ec2" {
  source = "./modules/ec2"

  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = module.subnet_public.subnet_id
  vpc_security_group_ids = [module.security_group.sg_id]
}