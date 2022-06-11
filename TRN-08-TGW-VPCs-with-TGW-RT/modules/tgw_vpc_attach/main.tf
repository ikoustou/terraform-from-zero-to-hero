resource "aws_ec2_transit_gateway_vpc_attachment" "tgwattachvpc" {
  subnet_ids         = var.subnet_ids
  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.vpc_id

  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
}