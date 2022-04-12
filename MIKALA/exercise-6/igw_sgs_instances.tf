# Internet Gateway
module "igw" {
  source = "./modules/internet_gateway"

  vpc_id = module.vpc1.id
  tags   = var.igw_tags
}


# Route
module "default-route" {
  source                 = "./modules/route"

  route_table_id         = module.rt1-pub.id
  destination_cidr_block = var.default_dest_cidr_block
  gateway_id             = module.igw.id
}


# Security Groups
module "sg1_icmp" {
  source         = "./modules/security_group"

  name           = var.sg1_icmp_name
  description    = var.sg1_icmp_description
  vpc_id         = module.vpc1.id
  in_from_port   = var.in_sg1_icmp_from_port
  in_to_port     = var.in_sg1_icmp_to_port
  in_protocol    = var.in_sg1_icmp_protocol
  in_cidr_blocks = var.in_sg1_icmp_cidr_blocks
  tags           = var.sg1_icmp_tags
}

module "sg1_ssh" {
  source         = "./modules/security_group"

  name           = var.sg1_ssh_name
  description    = var.sg1_ssh_description
  vpc_id         = module.vpc1.id
  in_from_port   = var.in_sg1_ssh_from_port
  in_to_port     = var.in_sg1_ssh_to_port
  in_protocol    = var.in_sg1_ssh_protocol
  in_cidr_blocks = var.in_sg1_ssh_cidr_blocks
  tags           = var.sg1_ssh_tags
}

module "sg2_icmp" {
  source         = "./modules/security_group"

  name           = var.sg2_icmp_name
  description    = var.sg2_icmp_description
  vpc_id         = module.vpc2.id
  in_from_port   = var.in_sg2_icmp_from_port
  in_to_port     = var.in_sg2_icmp_to_port
  in_protocol    = var.in_sg2_icmp_protocol
  in_cidr_blocks = var.in_sg2_icmp_cidr_blocks
  tags           = var.sg2_icmp_tags
}

# Instances

module "i1_pub" {
  source                 = "./modules/instance"

  instance_type           = var.i1_pub_type
  key_name                = var.i1_pub_key_name
  subnet_id               = module.subnet1_pub.id
  vpc_security_group_ids  = [module.sg1_icmp.id,module.sg1_ssh.id]
  tags                    = var.i1_pub_tags
}

module "i1_priv" {
  source                 = "./modules/instance"

  instance_type           = var.i1_priv_type
  key_name                = var.i1_priv_key_name
  subnet_id               = module.subnet1_priv.id
  vpc_security_group_ids  = [module.sg1_icmp.id]
  tags                    = var.i1_priv_tags
}

module "i2_pub" {
  source                 = "./modules/instance"

  instance_type           = var.i2_pub_type
  key_name                = var.i2_pub_key_name
  subnet_id               = module.subnet2_pub.id
  vpc_security_group_ids  = [module.sg2_icmp.id]
  tags                    = var.i1_pub_tags
}

module "i2_priv" {
  source                 = "./modules/instance"

  instance_type           = var.i2_priv_type
  key_name                = var.i2_priv_key_name
  subnet_id               = module.subnet2_priv.id
  vpc_security_group_ids  = [module.sg2_icmp.id]
  tags                    = var.i2_priv_tags
}