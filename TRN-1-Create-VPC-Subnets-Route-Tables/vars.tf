variable "vpc_cidr_block" {
  type = string
  description = "CIDR Block of the VPC"
  default = "10.0.0.0/16"
}

variable "subnet1_cidr_block" {
  type = string
  description = "CIDR Block of subnet 1"
  default = "10.0.1.0/24"
}

variable "subnet2_cidr_block" {
  type = string
  description = "CIDR Block of subnet 2"
  default = "10.0.2.0/24"
}

variable "subnet_name1" {
  type = string
  description = "subnet name for tagging"
  default = "TRN-1-subnet-1"
}

variable "subnet_name2" {
  type = string
  description = "subnet name for tagging"
  default = "TRN-1-subnet-2"
}