provider "aws" {
 region = "us-east-1"
 
}
resource "aws_key_pair" "sami-key" {
 key_name = "sami-key"
 public_key = file("sami-key.pub") 
}
resource "aws_instance" "web" {
 ami = "ami-0e9089763828757e1"
 instance_type = "t2.micro"
 key_name = aws_key_pair.sami-key.key_name
}
