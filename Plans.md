# Exercise 1
```terraform
Terraform will perform the following actions:

  # aws_route_table.TRN-1-rt will be created
  + resource "aws_route_table" "TRN-1-rt" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = []
      + tags             = {
          + "Name" = "TRN-1-rt"
        }
      + tags_all         = {
          + "Name" = "TRN-1-rt"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table_association.a will be created
  + resource "aws_route_table_association" "a" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.b will be created
  + resource "aws_route_table_association" "b" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.subnet1.aws_subnet.TRN-1-subnet will be created
  + resource "aws_subnet" "TRN-1-subnet" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "TRN-1-subnet-1"
        }
      + tags_all                                       = {
          + "Name" = "TRN-1-subnet-1"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.subnet2.aws_subnet.TRN-1-subnet will be created
  + resource "aws_subnet" "TRN-1-subnet" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "TRN-1-subnet-2"
        }
      + tags_all                                       = {
          + "Name" = "TRN-1-subnet-2"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.TRN-1-VPC will be created
  + resource "aws_vpc" "TRN-1-VPC" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "TRN-1-VPC"
        }
      + tags_all                             = {
          + "Name" = "TRN-1-VPC"
        }
    }

Plan: 6 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────
```
#Exercise 3 

```terraform
Terraform will perform the following actions:

  # module.TRN-3-example.module.igw.aws_internet_gateway.TRN-3-gw will be created
  + resource "aws_internet_gateway" "TRN-3-gw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "TRN-3-igw"
        }
      + tags_all = {
          + "Name" = "TRN-3-igw"
        }
      + vpc_id   = (known after apply)
    }

  # module.TRN-3-example.module.route.aws_route.r will be created
  + resource "aws_route" "r" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)
    }

  # module.TRN-3-example.module.route_table_private.aws_route_table.TRN-3-rt will be created
  + resource "aws_route_table" "TRN-3-rt" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = []
      + tags             = {
          + "Name" = "TRN-3-rt-private"
        }
      + tags_all         = {
          + "Name" = "TRN-3-rt-private"
        }
      + vpc_id           = (known after apply)
    }

  # module.TRN-3-example.module.route_table_public.aws_route_table.TRN-3-rt will be created
  + resource "aws_route_table" "TRN-3-rt" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = []
      + tags             = {
          + "Name" = "TRN-3-rt-public"
        }
      + tags_all         = {
          + "Name" = "TRN-3-rt-public"
        }
      + vpc_id           = (known after apply)
    }

  # module.TRN-3-example.module.rt_association_private.aws_route_table_association.TRN-3-rt-association will be created
  + resource "aws_route_table_association" "TRN-3-rt-association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.TRN-3-example.module.rt_association_public.aws_route_table_association.TRN-3-rt-association will be created
  + resource "aws_route_table_association" "TRN-3-rt-association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.TRN-3-example.module.subnet_private.aws_subnet.TRN-3-subnet will be created
  + resource "aws_subnet" "TRN-3-subnet" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.0.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "TRN-3-private-subnet"
        }
      + tags_all                                       = {
          + "Name" = "TRN-3-private-subnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.TRN-3-example.module.subnet_public.aws_subnet.TRN-3-subnet will be created
  + resource "aws_subnet" "TRN-3-subnet" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "TRN-3-public-subnet"
        }
      + tags_all                                       = {
          + "Name" = "TRN-3-public-subnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.TRN-3-example.module.vpc.aws_vpc.TRN-3-VPC will be created
  + resource "aws_vpc" "TRN-3-VPC" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "TRN-3-VPC"
        }
      + tags_all                             = {
          + "Name" = "TRN-3-VPC"
        }
    }

Plan: 9 to add, 0 to change, 0 to destroy.
```

# Exercise 4

I ran out of time, didn't figure out how to get the public ip for my instance :(

```terraform
Terraform will perform the following actions:

  # module.TRN-4-example.module.ec2.aws_instance.ec2 will be created
  + resource "aws_instance" "ec2" {
      + ami                                  = "ami-0b614a5d911900a9b"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "terraform-training"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags_all                             = (known after apply)
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
          + instance_metadata_tags      = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # module.TRN-4-example.module.igw.aws_internet_gateway.igw will be created
  + resource "aws_internet_gateway" "igw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "igw"
        }
      + tags_all = {
          + "Name" = "igw"
        }
      + vpc_id   = (known after apply)
    }

  # module.TRN-4-example.module.route.aws_route.route will be created
  + resource "aws_route" "route" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)
    }

  # module.TRN-4-example.module.route_table_private.aws_route_table.route_table will be created
  + resource "aws_route_table" "route_table" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = []
      + tags             = {
          + "Name" = "rt-private"
        }
      + tags_all         = {
          + "Name" = "rt-private"
        }
      + vpc_id           = (known after apply)
    }

  # module.TRN-4-example.module.route_table_public.aws_route_table.route_table will be created
  + resource "aws_route_table" "route_table" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = []
      + tags             = {
          + "Name" = "rt-public"
        }
      + tags_all         = {
          + "Name" = "rt-public"
        }
      + vpc_id           = (known after apply)
    }

  # module.TRN-4-example.module.rt_association_private.aws_route_table_association.rt_association will be created
  + resource "aws_route_table_association" "rt_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.TRN-4-example.module.rt_association_public.aws_route_table_association.rt_association will be created
  + resource "aws_route_table_association" "rt_association" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.TRN-4-example.module.security_group.aws_security_group.inbound_allow_all_icmp will be created
  + resource "aws_security_group" "inbound_allow_all_icmp" {
      + arn                    = (known after apply)
      + description            = "inbound allow all icmp"
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "Inbound traffic ping"
              + from_port        = 8
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "icmp"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + name                   = "inbound_allow_all_icmp"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # module.TRN-4-example.module.subnet_private.aws_subnet.subnet will be created
  + resource "aws_subnet" "subnet" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.0.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "private-subnet"
        }
      + tags_all                                       = {
          + "Name" = "private-subnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.TRN-4-example.module.subnet_public.aws_subnet.subnet will be created
  + resource "aws_subnet" "subnet" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "public-subnet"
        }
      + tags_all                                       = {
          + "Name" = "public-subnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.TRN-4-example.module.vpc.aws_vpc.vpc will be created
  + resource "aws_vpc" "vpc" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "vpc"
        }
      + tags_all                             = {
          + "Name" = "vpc"
        }
    }

Plan: 11 to add, 0 to change, 0 to destroy.
```