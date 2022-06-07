module "stage_1" {
  source = "../"

  region = var.region

  #VPC
  vpc1_cidr_block = var.vpc1_cidr_block
  vpc1_tags = var.vpc1_tags
  vpc2_tags = var.vpc2_tags
  vpc2_cidr_block = var.vpc2_cidr_block
  availability_zone1 = var.availability_zone1
  availability_zone2 = var.availability_zone2

  #Subnets
  subnet_tags = var.subnet_tags
  map_public_ip_on_launch = var.map_public_ip_on_launch
  vpc1_subnet1_cidr_block = var.vpc1_subnet1_cidr_block
  vpc1_subnet2_cidr_block = var.vpc1_subnet2_cidr_block
  vpc2_subnet1_cidr_block = var.vpc2_subnet1_cidr_block
  vpc2_subnet2_cidr_block = var.vpc2_subnet2_cidr_block
 
  #Route Table
  route_table_tags = var.route_table_tags

  #Internet Gateway
  internet_gateway_tags = var.internet_gateway_tags

  #Route
  destination_cidr_block = var.destination_cidr_block

  #SG Ping Public
  from_port = var.from_port
  to_port = var.to_port
  protocol = var.protocol
  sg_cidr_blocks = var.sg_cidr_blocks
  security_group_tags = var.security_group_tags

  #Security Group SSH Public
  from_port_ssh_public = var.from_port_ssh_public
  to_port_ssh_public = var.to_port_ssh_public
  protocol_ssh_public = var.protocol_ssh_public
  security_group_tags_ssh_public = var.security_group_tags_ssh_public

  #SG Ping Private
  sg_cidr_blocks_private = var.sg_cidr_blocks_private
  security_group_tags_private = var.security_group_tags_private

  #EC2 Public
  instance_type = var.instance_type
  key_name = var.key_name
  ec2_tags_public = var.ec2_tags_public

  #EC2 Private
  ec2_tags_private = var.ec2_tags_private
  
  #Peering
  vpc_peering_tags = var.vpc_peering_tags
  vpc_peering_accepter_tags = var.vpc_peering_accepter_tags

  #Transit-Gateway
  amazon_side_asn = var.amazon_side_asn
}