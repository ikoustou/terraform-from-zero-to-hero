module "stage_1" {
  source = "../"

  region              = var.region
  vpc_cidr_block      = var.vpc_cidr_block
  subnet_public_cidr_block = var.subnet_public_cidr_block
  subnet_private_cidr_block = var.subnet_private_cidr_block
  vpc_tags            = var.vpc_tags
  subnet_public_tags       = var.subnet_public_tags
  subnet_private_tags       = var.subnet_private_tags
  route_table_public_tags    = var.route_table_public_tags
  route_table_private_tags    = var.route_table_private_tags
  internet_gateway_tags = var.internet_gateway_tags
  destination_cidr_block = var.destination_cidr_block
  from_port = var.from_port
  to_port = var.to_port
  protocol = var.protocol
  sg_cidr_blocks = var.sg_cidr_blocks
  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  map_public_ip_on_launch = var.map_public_ip_on_launch
  do_not_map_public_ip_on_launch = var.do_not_map_public_ip_on_launch
  security_group_tags = var.security_group_tags
  ec2_tags = var.ec2_tags
}