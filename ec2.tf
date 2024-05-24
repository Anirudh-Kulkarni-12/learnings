provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "Test" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t3.micro"
  
}