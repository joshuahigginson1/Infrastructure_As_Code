variable "Subnet_ID" {
  description = ""
  default = "This variable must be defined at environment level."
}

variable "SecGroup_ID" {
  description = ""
  default = "This variable must be defined at environment level."
}

variable "ami" {
  description = ""
  default = "This variable must be defined at environment level."
}

variable "key_name" {
  description = ""
  default = "This variable must be defined at environment level."
}

variable "environment" {
  description = "The environment in which this resource is running."
  default = "This variable must be defined at environment level."
}