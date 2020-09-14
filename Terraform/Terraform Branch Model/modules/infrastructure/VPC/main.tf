# Create VPC

resource "aws_vpc" "MainVPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.region} - ${var.environment} - VPC"
    Task = "Branch Model Task"
  }
}