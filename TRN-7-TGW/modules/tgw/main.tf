resource "aws_ec2_transit_gateway" "tgw" {
  amazon_side_asn = var.amazon_side_asn
}