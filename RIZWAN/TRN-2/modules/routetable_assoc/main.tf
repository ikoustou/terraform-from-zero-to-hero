resource "aws_route_table_association" "rt_assoc" {
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id

#  tags = {
#    Name = var.rtassoc_name
#  }

}
