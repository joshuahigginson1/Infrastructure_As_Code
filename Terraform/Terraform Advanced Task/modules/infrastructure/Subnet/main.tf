# Create a Subnet

resource "aws_subnet" "AdvancedSubnet1" {
  cidr_block = var.Subnet_CIDR
  vpc_id = var.VPC_ID

    tags = {
    Name = "${var.environment} - AdvancedSubnet1"
  }
}