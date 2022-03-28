output "id" {
  value       = aws_route.main.id
  description = "Route identifier computed from the routing table identifier and route destination."
}