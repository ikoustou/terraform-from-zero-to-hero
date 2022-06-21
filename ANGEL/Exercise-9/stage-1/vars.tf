variable "instance_type" {
  type = string
  description = "instance type"
}

variable "my_count" {
  type = number
  description = "number of resources to create"
}

variable "tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "region" {
  type = string
  description = "AWS region to deploy resources"
}