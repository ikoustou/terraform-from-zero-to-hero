output "id" {
  value       = aws_ec2_transit_gateway_route.main.id
  description = "EC2 Transit Gateway Route Table identifier combined with destination."
}