# Create EC2

resource "aws_instance" "AdvancedECC1" {
  ami = var.ami
  instance_type = "t2.micro"
  key_name = var.key_name
  subnet_id = var.Subnet_ID
  vpc_security_group_ids = [var.SecGroup_ID]
  associate_public_ip_address = true

  tags = {
    Name = "${var.environment} - EC2 Instance"
  }
}