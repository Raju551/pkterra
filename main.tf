provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myawsserver" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.micro"

  tags = {
    Name = "pkdas-server-nilesh"
  }
}
output "myawsserver-ip" {
  value = aws_instance.myawsserver.public_ip
}

output "myserver-PrivateIP" {
  value = aws_instance.myawsserver.private_ip
}
