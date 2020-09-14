variable "ingress_ports" {
  type        = list(number)
  description = "A list of of our Security Group ingress ports."
  default     = [22, 80, 443]
}

variable "egress_ports" {
  type        = list(number)
  description = "A list of of our Security Group egress ports."
  default     = [0]
}

variable "open_internet" {
  description = "The CIDR port for open internet access."
  default = "0.0.0.0/0"
}

variable "vpc_id" {
  description = "The VPC ID."
  default = "This variable can only be referenced later, in main.tf."
}

variable "name" {
  description = "The Sec Group Name."
  default = "AWSIntermediateSecGroup"
}