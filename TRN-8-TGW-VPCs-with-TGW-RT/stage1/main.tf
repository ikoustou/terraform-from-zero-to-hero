module "Two_Vpcs_TGW_peering" {
  source = "../"

  region             = var.region
  availability_zone1 = var.availability_zone1
  availability_zone2 = var.availability_zone2
  
  # VPC1
  vpc1_cidr_block = var.vpc1_cidr_block
  vpc1_subnet1_cidr_block = var.vpc1_subnet1_cidr_block
  vpc1_subnet1_tags                    = var.vpc1_subnet1_tags
  vpc1_subnet1_map_public_ip_on_launch = var.vpc1_subnet1_map_public_ip_on_launch
  vpc1_subnet2_cidr_block = var.vpc1_subnet2_cidr_block
  vpc1_subnet2_tags = var.vpc1_subnet2_tags
  vpc1_rt1_public_name = var.vpc1_rt1_public_name
  vpc1_rt2_private_name = var.vpc1_rt2_private_name
  
  # VPC2
  vpc2_cidr_block = var.vpc2_cidr_block
  vpc2_subnet1_cidr_block = var.vpc2_subnet1_cidr_block
  vpc2_subnet1_tags = var.vpc2_subnet1_tags
  vpc2_subnet2_cidr_block = var.vpc2_subnet2_cidr_block
  vpc2_subnet2_tags = var.vpc2_subnet2_tags
  vpc2_rt1_private_name = var.vpc2_rt1_private_name
  vpc2_rt2_private_name = var.vpc2_rt2_private_name


  # SG1 exists in VPC2
  sg1_from_port     = var.sg1_from_port
  sg1_to_port       = var.sg1_to_port
  sg1_protocol      = var.sg1_protocol
  sg1_cidr_blocks   = var.sg1_cidr_blocks
  sg1_tags          = var.sg1_tags
  
  # SG2 exists in VPC1
  sg2_from_port     = var.sg2_from_port
  sg2_to_port       = var.sg2_to_port
  sg2_protocol      = var.sg2_protocol
  sg2_cidr_blocks   = var.sg2_cidr_blocks
  sg2_tags          = var.sg2_tags
  
  # instance vars
  instance_type         = var.instance_type
  key_name              = var.key_name
  instance_bastion_tags = var.instance_bastion_tags
  instance_vpc2_tags    = var.instance_vpc2_tags
  
  # tgw
  amazon_side_asn   = var.amazon_side_asn

  tgw_rt_vpc1_tags  = var.tgw_rt_vpc1_tags
  tgw_rt_vpc2_tags  = var.tgw_rt_vpc2_tags  
}