output "instance" {
  value       = aws_vpc_peering_connection.vpc_peering_connection
  description = "Content of the VPC Peering Connection."
}