variable "region" {
  type = string
  description = "AWS region to deploy resources"
}

variable "cidr_list" {
  type        = list(string)
  description = "A list of CIDR block values."
}

variable "vpc_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}