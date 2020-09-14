
variable "ami"{
  description = "The default AMI - Ubuntu 18.04 Bionic 64 x86, in eu-west-1"
  default = "ami-04137ed1a354f54c4"
}

variable instance-type {
  description = "The model of server to run our EC2 instance as."
  default = "t2.micro"
}

variable pem-key {
  description = "Our PEM Key"
  default = "asbandia-key-pair"
}

variable subnet_id {
  description = "The ID of the subnet we want to create this EC2 instance in."
  default = "This variable can only be referenced later, in main.tf."
}

variable vpc_security_group_ids {
  type = list(string)
  description = "A list of our VPC security group IDs."
  default = ["This variable can only be referenced later, in main.tf."]
}


variable tags {
  type = map(string)
  description = "A map of tags, that we want to include on our EC2 Instance."
  default = {
    key = "DefaultIntermediateEC2Name"
  }
}

variable associate_public_ip_address {
  description = "Do we want to give the EC2 instance a public IP address?"
  default = true
}
