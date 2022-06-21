variable "instance_type" {
  type = string
  description = "instance type"
}

variable "create_instance" {
  type = bool
  description = "Creates an instacne or not"
}

variable "tags" {
  type        = map
  description = "Tags for AWS Resource"
}