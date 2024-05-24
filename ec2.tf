provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "Test" {
    ami = ""
    instance_type = "t3.micro"
  
}