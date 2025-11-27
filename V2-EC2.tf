provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo-server1" {
  ami = "ami-0fa3fe0fa7920f68e"
  instance_type = "t2.micro"
  key_name = "dpp"
  security_groups = ["demo-sg"]
}

resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "Allow ssh inbound/outbound traffic"

  ingress {
    description = "TAllow ssh inbound traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-port"
  }
}