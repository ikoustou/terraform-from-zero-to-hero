variable "ami_id" {
  type = string
  description = "ami id"
  default = null
}

variable "instance_type" {
  type = string
  description = "instance_type"
}

variable "n_instances" {
  type = string
  description = "number of instance to create"
}