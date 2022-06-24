resource "aws_vpc" "VPC" {
  for_each = var.vpcs_data

  cidr_block = each.value.cidr

  tags = {
    Name = each.value.name
  }

}