module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc1.instance.id
  tags = var.internet_gateway_tags
}

module "route" {
  source = "./modules/route"
  route_table_id = module.vpc1_route_table1.instance.id
  destination_cidr_block = var.destination_cidr_block
  gateway_id = module.internet_gateway.instance.id
}

module "security_group_ping_public" {
  source = "./modules/security_group"

  vpc_id = module.vpc1.instance.id
  from_port = var.from_port
  to_port = var.to_port
  protocol = var.protocol
  sg_cidr_blocks = var.sg_cidr_blocks
  tags = var.security_group_tags
}

module "security_group_ssh_public" {
  source = "./modules/security_group"

  vpc_id = module.vpc1.instance.id
  from_port = var.from_port_ssh_public
  to_port = var.to_port_ssh_public
  protocol = var.protocol_ssh_public
  sg_cidr_blocks = var.sg_cidr_blocks
  tags = var.security_group_tags_ssh_public
}

module "security_group_ping_private" {
  source = "./modules/security_group"

  vpc_id = module.vpc2.instance.id
  from_port = var.from_port
  to_port = var.to_port
  protocol = var.protocol
  sg_cidr_blocks = var.sg_cidr_blocks_private
  tags = var.security_group_tags_private
}

module "ec2_public" {
  source = "./modules/ec2"

  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = module.vpc1_subnet1.instance.id
  vpc_security_group_ids = [module.security_group_ping_public.instance.id, module.security_group_ssh_public.instance.id]
  tags = var.ec2_tags_public
}

module "ec2_private" {
  source = "./modules/ec2"

  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = module.vpc2_subnet2.instance.id
  vpc_security_group_ids = [module.security_group_ping_private.instance.id]
  tags = var.ec2_tags_private
}