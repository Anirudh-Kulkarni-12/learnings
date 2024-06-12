data "aws_ami" "amazon_instance" {
  most_recent = true
  owners = ["amazon"]
}

resource "aws_instance" "Test_Server" {
  ami = data.aws_ami.amazon_instance.image_id
  instance_type = "t3.micro"
  subnet_id = aws_subnet.Public-Subnet1[0].id
  vpc_security_group_ids = [aws_security_group.Test_server_Security.id]
  associate_public_ip_address = true

  tags = {
    Name = "Test_server"
  }
}

resource "aws_key_pair" "Devops123" {
    key_name = "Devops123"
    public_key = file(
    )
  
}

output "Server" {
    value = aws_instance.Test_Server.id
  
}

