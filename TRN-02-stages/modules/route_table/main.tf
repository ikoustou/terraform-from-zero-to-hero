resource "aws_route_table" "TRN-2-rt" {
  vpc_id = var.vpc_id

  route = []

  tags = {
    Name = "${var.rt_name}"
  }
}