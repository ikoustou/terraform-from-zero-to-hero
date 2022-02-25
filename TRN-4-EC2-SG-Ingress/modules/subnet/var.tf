variable "vpc_id" {
  type = string
  description = "ID of VPC for this excercise"
}

variable "subnet_cidr_block" {
  type = string
  description = "subnet cidr block"
}

variable "subnet_name" {
  type = string
  description = "subnet name tag"
}