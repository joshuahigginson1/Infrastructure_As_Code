output "PublicEC2IP" {
  value = aws_instance.IntermediateEC2Instance.public_ip
}