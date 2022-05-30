resource "aws_ec2_transit_gateway" "ec2_transit_gateway" {
  amazon_side_asn = var.amazon_side_asn
  default_route_table_association = var.default_route_table_association
  default_route_table_propagation = var.default_route_table_propagation 
}