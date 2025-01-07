provider "aws" {
  region = "us-east-1"
  #   access_key = ""
  #   secret_key = ""
}

resource "aws_instance" "intro" {
  ami                    = "ami-01816d07b1128cd2d"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "randomkey1"
  vpc_security_group_ids = ["sg-083eb8f88c8da2156"]
  tags = {
    Name        = "first-instance-terraform"
    Environment = "Terraform"
  }
}