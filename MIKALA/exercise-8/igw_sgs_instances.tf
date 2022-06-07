# Internet Gateway
module "igw" {
  source = "./modules/internet_gateway"

  vpc_id = module.vpc1.id
  tags   = var.igw_tags

  depends_on = [
    module.vpc1
  ]
}


# Route
module "default-route" {
  source                 = "./modules/route"

  route_table_id         = module.rt1-pub.id
  destination_cidr_block = var.default_dest_cidr_block
  gateway_id             = module.igw.id

  depends_on = [
    module.rt1-pub,
    module.igw.id
  ]
}


# Security Groups
module "sg_icmp" {
  source         = "./modules/security_group"

  name           = var.sg_icmp_name
  description    = var.sg_icmp_description
  vpc_id         = module.vpc2.id
  in_from_port   = var.in_sg_icmp_from_port
  in_to_port     = var.in_sg_icmp_to_port
  in_protocol    = var.in_sg_icmp_protocol
  in_cidr_blocks = var.in_sg_icmp_cidr_blocks
  tags           = var.sg_icmp_tags

  depends_on = [
    module.vpc1
  ]
}

module "sg_ssh" {
  source         = "./modules/security_group"

  name           = var.sg_ssh_name
  description    = var.sg_ssh_description
  vpc_id         = module.vpc1.id
  in_from_port   = var.in_sg_ssh_from_port
  in_to_port     = var.in_sg_ssh_to_port
  in_protocol    = var.in_sg_ssh_protocol
  in_cidr_blocks = var.in_sg_ssh_cidr_blocks
  tags           = var.sg_ssh_tags

  depends_on = [
    module.vpc1
  ]
}

# Instances

module "i1_pub" {
  source                 = "./modules/instance"

  instance_type           = var.i1_pub_type
  key_name                = var.i1_pub_key_name
  subnet_id               = module.subnet1_pub.id
  vpc_security_group_ids  = [module.sg_ssh.id]
  tags                    = var.i1_pub_tags

  depends_on = [
    module.subnet1_pub,
    module.sg_icmp,
    module.sg_ssh
  ]
}

module "i2_priv" {
  source                 = "./modules/instance"

  instance_type           = var.i2_priv_type
  key_name                = var.i2_priv_key_name
  subnet_id               = module.subnet2_priv.id
  vpc_security_group_ids  = [module.sg_icmp.id]
  tags                    = var.i2_priv_tags

  depends_on = [
    module.subnet2_priv,
    module.sg_icmp
  ]
}