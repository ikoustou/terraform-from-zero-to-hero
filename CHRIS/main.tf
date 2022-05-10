terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

resource "aws_vpc" "main" {
    cidr_block = var.cidr_block

    tags = {
        Name = "chris"
        Environment = "Dev"
        Terraform = "True"
    }
}

resource "aws_subnet" "subnet-resource-1" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.1.0/24"

    tags =  {
        Name = "subnet-resource-1"
    }  
}

resource "aws_subnet" "subnet-resource-2" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.2.0/24"

    tags = {
        Name = "subnet-resource-2"
    }
}

resource "aws_route_table" "route-table-1" {
  vpc_id = aws_vpc.main.id

  route = []

  tags = {
    Name = "route-table-exercise-1"
  }
}

# resource "aws_route_table_association" "assoc-a" {
#   subnet_id      = aws_subnet.main.id
#   route_table_id = aws_route_table.bar.id
# }

# resource "aws_route_table_association" "assoc-b" {
#   subnet_id      = aws_subnet.main.id
#   route_table_id = aws_route_table.main.id
# }
