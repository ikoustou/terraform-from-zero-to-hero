module "internet_gateway" {
  source = "./modules/internet_gateway"

  vpc_id = module.vpc.id
  tags   = var.internet_gateway_tags
}

module "route" {
  source                 = "./modules/route"

  route_table_id         = module.rt-public.id
  destination_cidr_block = var.public_route_dest_cidr_block
  gateway_id             = module.internet_gateway.id
}

module "sg_public_icmp" {
  source         = "./modules/security_group"

  name           = var.sg_pub_icmp_name
  description    = var.sg_pub_icmp_description
  vpc_id         = module.vpc.id
  in_from_port   = var.in_pub_icmp_from_port
  in_to_port     = var.in_pub_icmp_to_port
  in_protocol    = var.in_pub_icmp_protocol
  in_cidr_blocks = var.in_pub_icmp_cidr_blocks
  tags           = var.sg_pub_icmp_tags
}

module "sg_private_icmp" {
  source         = "./modules/security_group"

  name           = var.sg_priv_icmp_name
  description    = var.sg_priv_icmp_description
  vpc_id         = module.vpc.id
  in_from_port   = var.in_priv_icmp_from_port
  in_to_port     = var.in_priv_icmp_to_port
  in_protocol    = var.in_priv_icmp_protocol
  in_cidr_blocks = var.in_priv_icmp_cidr_blocks
  tags           = var.sg_priv_icmp_tags
}

module "sg_public_ssh" {
  source         = "./modules/security_group"

  name           = var.sg_pub_ssh_name
  description    = var.sg_pub_ssh_description
  vpc_id         = module.vpc.id
  in_from_port   = var.in_pub_ssh_from_port
  in_to_port     = var.in_pub_ssh_to_port
  in_protocol    = var.in_pub_ssh_protocol
  in_cidr_blocks = var.in_pub_ssh_cidr_blocks
  tags           = var.sg_pub_ssh_tags
}

module "i_public" {
  source                 = "./modules/instance"

  instance_type           = var.i_public_type
  key_name                = var.i_public_key_name
  subnet_id               = module.public.id
  vpc_security_group_ids  = [module.sg_public_icmp.id,module.sg_public_ssh.id]
  tags                    = var.i_public_tags
}

module "i_private" {
  source                 = "./modules/instance"

  instance_type           = var.i_private_type
  key_name                = var.i_private_key_name
  subnet_id               = module.private.id
  vpc_security_group_ids  = [module.sg_private_icmp.id]
  tags                    = var.i_private_tags
}