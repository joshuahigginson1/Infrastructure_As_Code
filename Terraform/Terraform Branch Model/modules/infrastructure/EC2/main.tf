# Create a public EC2 Instance

resource "aws_instance" "public_instance" {
  ami = var.ami_id
  instance_type = "t2.micro"
  subnet_id = var.public_subnet_id
  associate_public_ip_address = true

  tags = {
    Name = "${var.environment} - ${var.region} - Public EC2"
  }
}

# Create private EC2 Instance

resource "aws_instance" "private_instance" {
  ami = var.ami_id
  instance_type = "t2.micro"
  subnet_id = var.private_subnet_id}
  associate_public_ip_address = true

  tags = {
    Name = "${var.environment} - ${var.region} - Private EC2"
  }
}