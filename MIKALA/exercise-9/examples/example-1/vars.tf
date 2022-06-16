variable "region" {
  type = string
  description = "AWS region to deploy resources"
}

variable "ec2_type" {
  type        = string
  description = "The instance type to use for the instance."
}

variable "ec2_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}