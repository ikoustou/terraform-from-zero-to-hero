resource "aws_vpc" "VPC" {
  count = length(var.Cidr_list)
  cidr_block = var.Cidr_list[count.index]
}

variable "Cidr_list" {
  type    = list(string)
  default = ["10.0.0.0/16", "10.1.0.0/16"  ]  
}