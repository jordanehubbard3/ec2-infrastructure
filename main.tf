provider "aws" {
  region  = "us-east-1"
  profile   = "myaws"
}

resource "aws_instance" "this" {
  ami                     = var.ami_id
  key_name                = var.key_name
  instance_type           = var.instance_type
  tags = {
    Name = var.tag_name
  }
}
