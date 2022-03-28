variable "ami" {
  type        = string
  description = "AMI to use for the instance."
}
  
variable "instance_type" {
  type        = string
  description = "The instance type to use for the instance."
}

variable "key_name" {
  type        = string
  description = "Key name of the Key Pair to use for the instance."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}