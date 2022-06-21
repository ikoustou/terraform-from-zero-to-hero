variable "cidr_blocks" {
  type = list
  description = "List containing multiple cidrs"
}

variable "tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "region" {
  type = string
  description = "AWS region to deploy resources"
}