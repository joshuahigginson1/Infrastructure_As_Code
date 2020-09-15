# Create a Security Group

resource "aws_security_group" "AdvancedSecGroup1" {

  tags = {
    Name = "${var.environment} - AdvancedSecGroup1"
  }

  vpc_id = var.VPC_ID

  dynamic "ingress" {
    for_each = var.tcp_ingress_ports
    iterator = tcp_ingress_port
    content {
      from_port   = tcp_ingress_port.value
      to_port     = tcp_ingress_port.value
      protocol    = "tcp"
      cidr_blocks = [var.VPC_CIDR]
    }
  }

  dynamic "egress" {
    for_each = var.egress_ports
    iterator = egress_port
    content {

      from_port = egress_port.value
      to_port = egress_port.value
      protocol = -1
      cidr_blocks = [var.open_internet]
    }
  }
}