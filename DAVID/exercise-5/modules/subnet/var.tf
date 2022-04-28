variable "vpc_id" {
  type = string
  description = "ID of VPC for this excercise"
}

variable "subnet_cidr_block" {
  type = string
  description = "subnet cidr block"
}

variable "subnet_name" {
  type = string
  description = "subnet name tag"
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "boolean variable. Set it to true if you want the EC2 instance to get public ip on launch"
  default     = null
}