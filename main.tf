provider "aws" {
  shared_config_files      = ["/root/.aws/config"]
  shared_credentials_files = ["/root/.aws/credentials"]
  profile                  = "myaws"
}

resource "aws_instance" "this" {
  ami                     = var.ami_id
  key_name                = var.key_name
  instance_type           = var.instance_type
  tags = {
    Name = var.tag_name
  }
}
