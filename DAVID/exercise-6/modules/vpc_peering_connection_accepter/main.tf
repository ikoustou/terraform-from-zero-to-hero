resource "aws_vpc_peering_connection_accepter" "vpc_peering_connection_accepter" {
  vpc_peering_connection_id = var.vpc_peering_connection_id
}