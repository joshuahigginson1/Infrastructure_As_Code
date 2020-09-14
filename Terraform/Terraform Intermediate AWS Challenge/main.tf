# Declare Provider

provider "aws" {
  region = "eu-west-1"
}

module "AWS_VPC" {
  source = "./VPC"
  VPCName = "IntermediateChallengeVPC"
}

module "AWS_WebServer_SecGroup1" {
  source        = "./SecurityGroup"
  name          = "WebServerSecGroup"
  vpc_id        = module.AWS_VPC.IntermediateVPC1_ID
  ingress_ports = [22, 80, 443]
}

module "AWS_WebServer_EC2_Node1" {
  source                 = "./EC2"
  subnet_id              = module.AWS_VPC.PublicSubnetA_ID
  vpc_security_group_ids = [module.AWS_WebServer_SecGroup1.IntermediateSecGroup1_AWS_ID]
  tags = {
    Name = "WebServer_Node1_Ubuntu"
  }
  associate_public_ip_address = true
}

module "AWS_WebServer_EC2_Node2" {
  source                 = "./EC2"
  subnet_id              = module.AWS_VPC.PublicSubnetA_ID
  vpc_security_group_ids = [module.AWS_WebServer_SecGroup1.IntermediateSecGroup1_AWS_ID]
  ami = var.Linux2AMI
  update_and_upgrade_script = "scripts/update_and_upgrade_yum.sh"
  tags = {
    Name = "WebServer_Node2_AMI"
  }
  associate_public_ip_address = true
}