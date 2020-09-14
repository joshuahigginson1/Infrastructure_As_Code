# Create AWS Public Subnet

resource "aws_subnet" "public_subnet" {
  vpc_id = var.vpc_id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "${var.environment} - ${var.region} - PublicSubnet"
  }
}

resource "aws_subnet" "private_subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.environment} = ${var.region} - PrivateSubnet"
  }
}