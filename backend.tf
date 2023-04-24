provider "aws" {
  region    = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "my-aws-tf-state-bucket"
    region = "us-east-1"
    key    = "main"
  }
}
