resource "aws_subnet" "Public-Subnet1" {
  vpc_id = aws_vpc.Tapplent.id
  cidr_block = var.aws_pubic_subnet

  tags = {
    Name = "Public-Subnet"
  }
}