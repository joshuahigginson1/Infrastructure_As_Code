variable "tcp_ingress_ports" {
  description = ""
  type = list(number)
  default = "This variable must be defined at environment level."
}

variable "VPC_CIDR" {
  description = "The IP CIDR block for our VPC."
  default = "This variable must be defined at environment level."
}

variable "environment" {
  description = "The environment in which this resource is running."
  default = "This variable must be defined at environment level."
}