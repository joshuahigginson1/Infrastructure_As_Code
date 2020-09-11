provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "TerraformS3Bucket" {
  bucket = "my-first-terraform-s3-bucket-235"
  acl    = "private"

  tags = {
    Name        = "TerraformS3Bucket"
  }

}