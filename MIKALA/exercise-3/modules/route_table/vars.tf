variable "vpc_id" {
  type        = string
  description = "The VPC ID."
}

variable "routes" {
  type        = map
  description = "A list of route objects."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}