provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "VarEC2" {
  ami = var.ami
  instance_type = var.type
}