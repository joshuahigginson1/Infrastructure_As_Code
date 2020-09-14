output "PublicEC2IP" {
  value = aws_instance.IntermediateEC2Instance.public_ip
}

output "KeyName" {
  value = aws_instance.IntermediateEC2Instance.key_name
}