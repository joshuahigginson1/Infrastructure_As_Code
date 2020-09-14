output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
  description = "The AWS ID for our public subnet, within our main VPC"
}
output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
  description = "The AWS ID for the private subnet, within main VPC"
}