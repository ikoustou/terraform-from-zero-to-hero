resource "aws_vpc" "TRN-2-VPC" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "TRN-2-VPC"
  }
}