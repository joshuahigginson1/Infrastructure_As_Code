variable "environment" {
  description = "The environment in which this resource is running."
  default = "This variable must be defined at environment level."
}

# Networking

variable "VPC_ID" {
  description = "The ID of the VPC belonging to each subnet."
  default = "This variable must be defined at environment level."
}

variable "VPC_CIDR" {
  description = "The IP CIDR block for our VPC."
  default = "This variable must be defined at environment level."
}

variable "Subnet_ID" {
  description = ""
  default = "This variable must be defined at environment level."
}

variable "Subnet_CIDR" {
  description = ""
  default = "This variable must be defined at environment level."
}

# EC2 Instances

variable "ami" {
  description = ""
  default = "This variable must be defined at environment level."
}

variable "key_name" {
  description = ""
  default = "This variable must be defined at environment level."
}

# Security

variable "SecGroup_ID" {
  description = ""
  default = "This variable must be defined at environment level."
}

variable "tcp_ingress_ports" {
  description = ""
  type = list(number)
  default = "This variable must be defined at environment level."
}


variable "egress_ports" {
  description = ""
  type = list(number)
  default = "This variable must be defined at environment level."
}