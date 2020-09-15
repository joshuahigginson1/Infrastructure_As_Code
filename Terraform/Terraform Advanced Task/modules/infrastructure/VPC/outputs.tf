# Outputs the VPC ID

output "VPC_ID" {
  description = ""
  value = aws_vpc.AdvancedVPC1.id
}