#resource aws_subnet
resource "aws_subnet" "sub" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_block

  availability_zone       = var.availability_zone
  tags                    = var.tags
  map_public_ip_on_launch = var.map_public_ip_on_launch 
}