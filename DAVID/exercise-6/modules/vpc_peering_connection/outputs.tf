output "connection_id" {
  value       = aws_vpc_peering_connection.vpc_peering_connection.id
  description = "VPC Peering Connection to be used by acceptor"
}