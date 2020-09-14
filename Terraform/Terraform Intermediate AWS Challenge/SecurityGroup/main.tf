# Create a new security group.

resource "aws_security_group" "IntermediateSecGroup1" {
  name = "IntermediateSecGroup1"
  description = "Allow SSH connection"
  vpc_id = var.vpc_id

  # Dynamically iterate through a list of our ingress ports.

  dynamic "ingress" {
    iterator = port
    for_each = var.ingress_ports
    content {
      from_port = port.value
      protocol = "tcp"
      to_port = port.value
      cidr_blocks = var.open_internet
    }
  }

  dynamic "egress" {
    iterator = port
    for_each = var.egress_ports
    content {
      from_port = port.value
      protocol = "-1"
      to_port = port.value
      cidr_blocks = var.open_internet
    }
  }
}