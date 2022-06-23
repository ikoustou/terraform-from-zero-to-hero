variable "ami_id" {
  type = string
  description = "ami id"
  default = null
}

variable "instance_type" {
  type = string
  description = "instance_type"
}

variable "create" {
  type = bool
  description = "boolean to create instance if true or not create if false"
}