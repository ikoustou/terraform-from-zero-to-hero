resource "aws_route_table" "route_table_exercise_1" {
  vpc_id = var.vpc_id

  route = []

  tags = {
    Name = "exercise_1"
  }
}