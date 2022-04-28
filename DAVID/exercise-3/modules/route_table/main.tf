resource "aws_route_table" "TRN-3-rt" {
  vpc_id = var.vpc_id

  route = []

  tags = {
    Name = "${var.rt_name}"
  }
}