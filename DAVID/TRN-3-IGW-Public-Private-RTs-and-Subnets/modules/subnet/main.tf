resource "aws_subnet" "TRN-3-subnet" {
  # name       = var.subnet_name
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = "${var.subnet_name}" 
  }
}