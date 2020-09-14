# Create a new VPC.

resource "aws_vpc" "IntermediateVPC1" {
  cidr_block           = var.IntermediateVPC1_CIDR
}

# Get from AWS: All currently operational availability zones.

data "aws_availability_zones" "available_AZ" {
  state = "available"
}

# Create subnet, with the first available availability zone.

resource "aws_subnet" "PublicSubnetA" {
  cidr_block        = var.PublicSubnet1_CIDR
  availability_zone = data.aws_availability_zones.available_AZ.names[0]
  vpc_id            = aws_vpc.IntermediateVPC1.id
}


# Create Internet Gateway.

resource "aws_internet_gateway" "IntermediateIG1" {
  vpc_id = aws_vpc.IntermediateVPC1.id
  tags = {
    Name = "VPC Internet Gateway"
  }
}

# Create Route Table.

resource "aws_route_table" "IntermediateRT1" {
  vpc_id = aws_vpc.IntermediateVPC1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IntermediateIG1.id
  }
  tags = {
    Name = "Route Table for VPC"
  }
}

resource "aws_route_table_association" "PublicSubnetA_RTAssociation1" {
  subnet_id      = aws_subnet.PublicSubnetA.id
  route_table_id = aws_route_table.IntermediateRT1.id
}