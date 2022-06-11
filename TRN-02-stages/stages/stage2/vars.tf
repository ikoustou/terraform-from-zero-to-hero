variable "region" {
  type = string
  description = "aws region to create infrastructure in"
}

variable "vpc_cidr_block" {
  type = string
  description = "CIDR Block of the VPC"
}

variable "subnet1_cidr_block" {
  type = string
  description = "CIDR Block of subnet 1"
}

variable "subnet_name1" {
  type = string
  description = "subnet name for tagging"
}

variable "subnet2_cidr_block" {
  type = string
  description = "CIDR Block of subnet 2"
}

variable "subnet_name2" {
  type = string
  description = "subnet name for tagging"
}

variable "rt_name" {
  type = string
  description = "route table name / tagging"
}

