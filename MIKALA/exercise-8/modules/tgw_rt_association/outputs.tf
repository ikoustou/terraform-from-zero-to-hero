output "id" {
  value       = aws_ec2_transit_gateway_route_table_association.main.id
  description = "EC2 Transit Gateway Route Table identifier combined with EC2 Transit Gateway Attachment identifier."
}