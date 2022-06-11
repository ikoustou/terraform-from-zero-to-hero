variable "subnet_id" {
  type = string
  description = "subnet id"
}

variable "route_table_id" {
  type = string
  description = "route table to create association with"
}

# variable "rt_association_name" {
#   type = string
#   description = "association name / tagging"
# }