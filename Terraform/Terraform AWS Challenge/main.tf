# Declare Provider

provider "aws" {
  region = "eu-west-1"
}

# Create VPC.

resource "aws_vpc" "ChallengeVPC" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "Challenge VPC"
  }
}

# Create Internet Gateway, and attach to VPC.

resource "aws_internet_gateway" "ChallengeIG" {
  vpc_id = aws_vpc.ChallengeVPC.id

  tags = {
    Name = "Challenge Internet Gateway"
  }
}

# Create Subnet and attach to VPC.

resource "aws_subnet" "ChallengeSubnet" {
  vpc_id     = aws_vpc.ChallengeVPC.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Challenge Subnet"
  }
}

# Create Route Table and attach to VPC.

resource "aws_route_table" "ChallengeRT" {
  vpc_id = aws_vpc.ChallengeVPC.id

  # Create Route to attach Internet Gateway.

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ChallengeIG.id
  }

  tags = {
    Name = "Challenge Route Table"
  }
}

# Create Sec Group.

resource "aws_security_group" "ChallengeSecGroupSSH" {
  name        = "ChallengeSecGroupSSH"
  description = "Allow SSH Inbound Traffic on port 22."
  vpc_id      = aws_vpc.ChallengeVPC.id

  # Allow Ingress SSH traffic.

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.ChallengeVPC.cidr_block]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port = 0
    to_port = 0
    protocol = "-1"

  }

  tags = {
    Name = "Allow SSH Inbound"
  }
}

# Create EC2 Instance.

resource "aws_instance" "ChallengeEC2" {
  ami = "ami-04137ed1a354f54c4"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.ChallengeSubnet.id
  vpc_security_group_ids = [aws_security_group.ChallengeSecGroupSSH.id]
  key_name = "asbandia-key-pair"

    tags = {
      Name = "Challenge EC2"
  }
}