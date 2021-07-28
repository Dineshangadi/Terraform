resource "aws_vpc" "vpc" {
  cidr_block       = var.cidir
  instance_tenancy = "default"
  enable_dns_hostnames = true
  tags = {
    Name = "Dinesh"
  }
}

#Subnet Public
resource "aws_subnet" "pub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "var.public cidr"
  availability_zone       = "ap-southeast-1"
  map_public_ip_on_launch = true

  tags = {
    Name = "pub"
  }
}

#private sub
resource "aws_subnet" "pri" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "var.private cidr"
  availability_zone       = "ap-southeast-2"

  tags = {
    Name = "pub"
  }
}
