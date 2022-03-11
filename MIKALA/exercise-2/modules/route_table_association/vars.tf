variable "subnet_id" {
  type        = string
  description = "The subnet ID to create an association"
}

variable "route_table_id" {
  type        = string
  description = "The ID of the routing table to associate with"
}