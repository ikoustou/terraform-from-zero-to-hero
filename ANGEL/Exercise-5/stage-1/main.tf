module "stage_1" {
  source = "../"

  region = var.region

  #VPC
  vpc_cidr_block = var.vpc_cidr_block
  vpc_tags = var.vpc_tags

  #Public Subnet
  subnet_public_cidr_block = var.subnet_public_cidr_block
  subnet_public_tags = var.subnet_public_tags
  map_public_ip_on_launch = var.map_public_ip_on_launch

  #Private Subnet
  subnet_private_cidr_block = var.subnet_private_cidr_block
  subnet_private_tags = var.subnet_private_tags

  #Public Route Table
  route_table_public_tags = var.route_table_public_tags

  #Private Route Table
  route_table_private_tags = var.route_table_private_tags

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
}