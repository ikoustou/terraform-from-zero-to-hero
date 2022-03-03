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

module "security_group_ping_public" {
  source = "./modules/security_group"

  vpc_id = module.vpc.vpc_id
  from_port = var.from_port_ping_public
  to_port = var.to_port_ping_public
  protocol = var.protocol_ping_public
  cidr_blocks = var.cidr_blocks_ping_public
}

module "security_group_ping_private" {
  source = "./modules/security_group"

  vpc_id = module.vpc.vpc_id
  from_port = var.from_port_ping_private
  to_port = var.to_port_ping_private
  protocol = var.protocol_ping_private
  cidr_blocks = var.cidr_blocks_ping_private
}

module "security_group_ssh" {
  source = "./modules/security_group"

  vpc_id = module.vpc.vpc_id
  from_port = var.from_port_ssh
  to_port = var.to_port_ssh
  protocol = var.protocol_ssh
  cidr_blocks = var.cidr_blocks_ssh
}

module "ec2_public" {
  source = "./modules/ec2"

  ami_id = var.ami_id_public
  instance_type = var.instance_type_public
  key_name = var.key_name_public
  subnet_id = module.subnet_public.subnet_id
  vpc_security_group_ids = [module.security_group_ping_public.sg_id, module.security_group_ssh.sg_id]
}

module "ec2_private" {
  source = "./modules/ec2"

  ami_id = var.ami_id_private
  instance_type = var.instance_type_private
  key_name = var.key_name_private
  subnet_id = module.subnet_private.subnet_id
  vpc_security_group_ids = [module.security_group_ping_private.sg_id]
}