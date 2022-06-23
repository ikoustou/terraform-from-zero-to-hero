variable "region" {
  type = string
  description = "AWS region to deploy resources"
}

variable "cidr_blocks" {
  type = list
  description = "List containing multiple cidrs"
}