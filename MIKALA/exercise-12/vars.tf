variable "region" {
  type = string
  description = "AWS region to deploy resources"
}

variable "vpc_data" {
  type        = map
  description = "VPC data objects containing name and CIDR."
}
