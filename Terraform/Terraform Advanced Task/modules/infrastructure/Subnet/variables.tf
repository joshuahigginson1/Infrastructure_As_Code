variable "Subnet_CIDR" {
  description = ""
  default = "This variable must be defined at environment level."
}

variable "VPC_ID" {
  description = "The ID of the VPC belonging to each subnet."
  default = "This variable must be defined at environment level."
}

variable "environment" {
  description = "The environment in which this resource is running."
  default = "This variable must be defined at environment level."
}