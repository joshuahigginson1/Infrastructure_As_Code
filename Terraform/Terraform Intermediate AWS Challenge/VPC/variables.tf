variable "IntermediateVPC1_CIDR" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "PublicSubnet1_CIDR" {
  description = "CIDR block for Public Subnet A"
  default     = "10.0.1.0/24"
}

variable "VPCName" {
  description = "The VPC name"
  default = "IntermediateVPC1"
}