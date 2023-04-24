provider "aws" {
  assume_role {
    role_arn     = "arn:aws:iam::363546864948:role/my-tf-ec2-role"
  }
}

resource "aws_instance" "this" {
  ami                     = var.ami_id
  key_name                = var.key_name
  instance_type           = var.instance_type
  tags = {
    Name = var.tag_name
  }
}
