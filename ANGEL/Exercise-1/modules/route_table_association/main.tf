resource "aws_route_table_association" "route_table_association_exercise_1" {
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id
}