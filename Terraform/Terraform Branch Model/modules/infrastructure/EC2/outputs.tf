output "PublicIPAddress" {
  value = aws_instance.public_instance.public_ip
}