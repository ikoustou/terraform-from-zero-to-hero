resource "aws_ec2_transit_gateway" "main" {
  amazon_side_asn = var.amazon_side_asn
  tags       = var.tags
}