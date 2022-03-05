resource "aws_vpc" "vpc_exercise_1" {
  cidr_block = var.vpc_cidr_block
  instance_tenancy = "default"
  
  tags = {
    Name = "exercise_1"
  }
}