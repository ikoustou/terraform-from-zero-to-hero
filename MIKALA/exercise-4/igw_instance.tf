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
  source      = "./modules/security_group"

  name        = var.sg_name
  description = var.sg_description
  vpc_id      = module.vpc.id
  ingress     = var.ingress
  tags        = var.sg_tags
}

module "instance" {
  source        = "./modules/instance"

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = var.instance_tags
}