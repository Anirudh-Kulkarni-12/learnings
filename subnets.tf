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

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.Public-Subnet1[count.index].id
  route_table_id = aws_route_table.Tap-Public-Route.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.Private-Subnet1[count.index].id
  route_table_id = aws_route_table.Tap-Private-Route.id
}