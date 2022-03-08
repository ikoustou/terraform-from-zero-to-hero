output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of the VPC"
}