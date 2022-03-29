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

module "security_group" {
  source         = "./modules/security_group"

  name           = var.sg_name
  description    = var.sg_description
  vpc_id         = module.vpc.id
  in_from_port   = var.in_from_port
  in_to_port     = var.in_to_port
  in_protocol    = var.in_protocol
  in_cidr_blocks = var.in_cidr_blocks
  tags           = var.sg_tags
}

module "instance" {
  source                 = "./modules/instance"

  ami                     = var.ami
  instance_type           = var.instance_type
  key_name                = var.key_name
  subnet_id               = module.public.id
  vpc_security_group_ids  = {module.security_group.id}
  tags                    = var.instance_tags
}