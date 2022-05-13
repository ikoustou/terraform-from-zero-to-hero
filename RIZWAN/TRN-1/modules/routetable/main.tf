resource "aws_route_table" "rt_exercise_1" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.rt_name
  }
}