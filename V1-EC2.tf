provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo-server1" {
  ami = "ami-0fa3fe0fa7920f68e"
  instance_type = "t2.micro"
  key_name = "dpp"
  
}