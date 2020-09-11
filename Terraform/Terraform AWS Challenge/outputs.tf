output "challenge_ec2_public_ip" {
  value = aws_instance.ChallengeEC2.public_ip
}

output "challenge_ec2_public_dns" {
  value = aws_instance.ChallengeEC2.public_dns
}