# --- Internet gateway and Route inside the vpc1_rt1_public to IGW (Internet gateway)
module "IGW_VPC1" {
  source = "./modules/igw"

  vpc_id = module.vpc1.vpcid# VPC1
}
module "route_to_igw_in_RT1" {
  source = "./modules/route"

  route_table_id            = module.vpc1_rt1_public.rtid
  destination_cidr_block    = "0.0.0.0/0" # everything else
  gateway_id = module.IGW_VPC1.igwid     # igw id
}

# --- Security Groups ----
module "SG_for_ping_in_vpc2" {
  source = "./modules/sg"

  vpc_id = module.vpc2.vpcid  # VPC2
  from_port   = var.sg1_from_port
  to_port     = var.sg1_to_port
  protocol    = var.sg1_protocol
  cidr_blocks = var.sg1_cidr_blocks
  tags        = var.sg1_tags
}

module "SG_for_ssh_in_vpc1" {
  source = "./modules/sg"

  vpc_id = module.vpc1.vpcid  # VPC1
  from_port   = var.sg2_from_port
  to_port     = var.sg2_to_port
  protocol    = var.sg2_protocol
  cidr_blocks = var.sg2_cidr_blocks
  tags        = var.sg2_tags
}

# --- EC2 instances ----
module "instance_bastion" {
  source = "./modules/instance"

  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = module.vpc1_subnet1.subnetid # VPC1 subnet1
  vpc_security_group_ids = [module.SG_for_ssh_in_vpc1.sgid] # List of SGs
  tags                   = var.instance_bastion_tags
}

module "instance_vpc2" {
  source = "./modules/instance"

  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = module.vpc2_subnet1.subnetid # VPC2 subnet1
  vpc_security_group_ids = [module.SG_for_ping_in_vpc2.sgid] # List of SGs
  tags                   = var.instance_vpc2_tags
}
