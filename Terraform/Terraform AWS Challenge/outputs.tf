output "challenge_ec2_public_dns" {
  value = aws_instance.ChallengeEC2.public_ip
}