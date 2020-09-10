provider "aws" {
    access_key = "NOT THE ACCESS KEY"
    secret_key = "DEFINITELY NOT THE SECRET KEY"
    region = "eu-west-1"
}

resource "aws_instance" "MyFirstTerraformEC2" {
    ami = "ami-04137ed1a354f54c4"
    instance_type = "t2.micro"
}