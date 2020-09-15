# Create Internet Gateway

resource "aws_internet_gateway" "AdvancedIG1" {
  vpc_id = var.VPC_ID

  tags = {
    Name = "${var.environment} - AdvancedIG1"
  }
}

# Create Route Table

resource "aws_route_table" "AdvancedRT1" {
  vpc_id = var.VPC_ID

  tags = {
    Name = "${var.environment} - AdvancedRT1"
  }
}

# Route -> Route Table to Internet Gateway

resource "aws_route" "AdvancedRT1toAdvancedIG1" {
  route_table_id = aws_route_table.AdvancedRT1.id

  tags = {
    Name = "${var.environment} - AdvancedRT1toAdvancedIG1"
  }
}

# Create Network ACL

resource "aws_network_acl" "AdvancedNACL1" {

  tags = {
    Name = "${var.environment} - AdvancedNACL1"
  }

  vpc_id = var.VPC_ID

  dynamic "NACL_tcp_ingress_allow" {
    for_each = var.tcp_ingress_ports
    iterator = tcp_ingress_port
    content {
      ingress {
        action = "allow"
        protocol = "tcp"
        from_port = tcp_ingress_port
        to_port = tcp_ingress_port
        rule = index(var.tcp_ingress_ports, tcp_ingress_port)
        cidr_block = var.open_internet
      }
    }
  }

  dynamic "NACL_tcp_egress_allow" {
    for_each = var.tcp_ingress_ports
    iterator = egress_port
    content {
      egress {
        action = "allow"
        protocol = "tcp"
        from_port = egress_port
        to_port = egress_port
        rule = index(var.tcp_ingress_ports, egress_port)
        cidr_block = var.open_internet
      }
    }
  }
}