resource "aws_subnet" "subnet_exercise_1" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = "exercise_1"
  }
}