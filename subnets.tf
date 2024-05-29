resource "aws_subnet" "Public-Subnet1" {
  vpc_id = aws_vpc.Tapplent.id
  cidr_block = var.aws_pubic_subnet

  tags = {
    Name = "Public-Subnet1"
  }
}

resource "aws_subnet" "Private-Subnet1" {
    vpc_id = aws_vpc.Tapplent.id
    cidr_block = var.aws_private_subnet

    tags = {
      Name = "Private-Subnet1"
    }
}