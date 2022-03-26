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
}