# Internet VPC
# resource "aws_vpc" "main" {
#   cidr_block           = "10.0.0.0/16"
#   instance_tenancy     = "default"
#   enable_dns_support   = "true"
#   enable_dns_hostnames = "true"
#   enable_classiclink   = "false"
#   tags = {
#     Name = "main"
#   }
# }


# Subnets
# resource "aws_subnet" "main-public-1" {
#   # vpc_id                  = aws_vpc.main.id
#   vpc_id                  = var.vpc_id
#   cidr_block              = "10.0.1.0/24"
#   map_public_ip_on_launch = "true"
#   availability_zone       = "us-east-1a"

#   tags = {
#     Name = "main-public-1"
#   }
# }
# Internet GW
# resource "aws_internet_gateway" "main-gw" {
#   # vpc_id = aws_vpc.main.id
#   vpc_id = "vpc-7aef6607"

#   tags = {
#     Name = "main"
#   }
# }

# route tables
# resource "aws_route_table" "main-public" {
#   # vpc_id = aws_vpc.main.id
#   vpc_id = "vpc-7aef6607"
#   route {
#     cidr_block = "0.0.0.0/0"
#     # gateway_id = aws_internet_gateway.main-gw.id
#   }

#   tags = {
#     Name = "main-public-1"
#   }
# }

# # route associations public
# resource "aws_route_table_association" "main-public-1-a" {
#   subnet_id      = "subnet-34bcc152"
#   route_table_id = aws_route_table.main-public.id
# }
