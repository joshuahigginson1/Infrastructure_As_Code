# Create VPC.

resource "aws_vpc" "AdvancedVPC1" {
  cidr_block = var.VPC_CIDR

  tags = {
    Name = "${var.environment} - AdvancedVPC1"
  }
}