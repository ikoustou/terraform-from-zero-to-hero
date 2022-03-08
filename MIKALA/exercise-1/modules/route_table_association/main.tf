resource "aws_route_table_association" "main" {
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id

  tags = {
    Name = var.name
  }
}