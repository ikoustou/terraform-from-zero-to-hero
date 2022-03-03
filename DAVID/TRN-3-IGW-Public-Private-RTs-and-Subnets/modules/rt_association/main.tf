resource "aws_route_table_association" "TRN-3-rt-association" {
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id

  # tags = {
  #   Name = "${var.rt_association_name}"
  # }
}