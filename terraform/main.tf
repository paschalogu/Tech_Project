provider "aws" {
 access_key = var.access_key
 secret_key = var.secret_key
 region = "eu-west-2"
}

resource "aws_security_group" "candidate1_sg" {
  name        = "candidate1_sg"
  description = "Allow access to the server and database"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "cb_server" {
  ami           = "ami-084e8c05825742534"
  instance_type = "t2.micro"
  count         = 4

  vpc_security_group_ids = [aws_security_group.candidate1_sg.name]

  tags = {
    Name = "cb-server-${count.index+1}"
  }
}

variable "access_key" {
  default = "access_key"
}

variable "secret_key" {
  default = "secret_key"
}
