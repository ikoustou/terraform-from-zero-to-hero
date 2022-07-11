variable "vpc_id" {
  type = string
  description = "VPC id to associate with internet gateway"
}

variable "tags" {
  type        = map
  description = "Tags for AWS Resource"
}