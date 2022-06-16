variable "region" {
  type        = string
  description = "AWS region to deploy resources"
}

variable "create_ec2" {
  type        = bool
  description = "Creates an EC2 instance only if a boolean variable is true."
}

variable "ec2_type" {
  type        = string
  description = "The instance type to use for the instance."
}

variable "ec2_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}