variable "environment" {
  description = "The environment in which this resource is running."
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

variable "open_internet" {
  description = "The IP CIDR block for open internet."
  default = "0.0.0.0/0"
}

variable "VPC_CIDR" {
  description = "The IP CIDR block for our VPC."
  default = "This variable must be defined at environment level."
}

variable "VPC_ID" {
  description = "The ID of the VPC belonging to each subnet."
  default = "This variable must be defined at environment level."
}