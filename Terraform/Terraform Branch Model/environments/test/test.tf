variable "environment" {}

variable "access_key" {}

variable "ami_id" {}

variable "region" {}

provider "aws" {
  region = var.region
}

module "infrastructure" {
  source = "../../modules/infrastructure"
  environment = var.environment
  region = var.region
  ami_id = var.ami_id
}