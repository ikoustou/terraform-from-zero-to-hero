variable "vpc_id" {
  type        = string
  description = "The VPC ID"
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource"
}