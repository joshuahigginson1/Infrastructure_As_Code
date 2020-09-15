output "EC2PublicIP" {
  value = "sudo ssh -i ~/.ssh/${module.EC2.PublicKeyName}.pem ubuntu@${module.EC2.PublicIPAddress}"
}