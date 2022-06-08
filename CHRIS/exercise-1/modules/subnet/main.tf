resource "aws_subnet" "subnet_resource_1" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
}

#resource "aws_subnet" "subnet_resource_2" {
#  vpc_id     = aws_vpc.main.id
#  cidr_block = "10.0.2.0/24"
#}