output "PublicIPAddress" {
  value = aws_instance.public_instance.public_ip
}

output "PublicKeyName" {
  value = aws_instance.public_instance.key_name

}