resource "aws_subnet" "Public-Subnet1" {

  count = 3

  vpc_id = aws_vpc.Tapplent.id
  cidr_block = var.aws_pubic_subnet
 

  tags = {
    Name = "Public-Subnet-${count.index}"
  }
}

resource "aws_subnet" "Private-Subnet1" {
    count = 3
    vpc_id = aws_vpc.Tapplent.id
    cidr_block = var.aws_private_subnet


    tags = {
      Name = "Private-Subnet-${count.index}"
    }
}
