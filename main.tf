provider "aws" {
  region = "us-east-1" # AWS region for all resources
}

resource "aws_instance" "webserver" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI in us-east-1
  instance_type = "t2.micro"              # Free-tier eligible instance size

  tags = {
    Name = "terraform-lab-instance" # Human-readable instance name
  }
}
