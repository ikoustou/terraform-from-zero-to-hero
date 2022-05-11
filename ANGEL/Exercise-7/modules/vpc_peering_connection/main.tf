resource "aws_vpc_peering_connection" "vpc_peering_connection" {
  peer_vpc_id   = var.peer_vpc_id
  vpc_id        = var.vpc_id
  auto_accept   = var.auto_accept
  tags          = var.tags
}