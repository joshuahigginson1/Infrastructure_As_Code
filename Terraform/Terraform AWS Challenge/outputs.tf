output "challenge_ec2_public_ip" {
  value = "sudo ssh -i ~/.ssh/asbandia-key-pair ubuntu@${aws_instance.ChallengeEC2.public_ip}"
}

output "challenge_ec2_public_dns" {
  value = "sudo ssh -i ~/.ssh/asbandia-key-pair ec2-user@${aws_instance.ChallengeEC2.public_dns}"
}