resource "aws_subnet" "TRN-2-subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = "${var.subnet_name}" 
  }
}