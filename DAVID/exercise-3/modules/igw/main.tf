resource "aws_internet_gateway" "TRN-3-gw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.igw_name}"
  }
}