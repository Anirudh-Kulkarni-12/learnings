resource "aws_route_table" "Tap-Public-Route" {
  vpc_id = aws_vpc.Tapplent.id

   route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Tapplent_igw.id
  }

  tags = {
    Name = "Tap-Public-Route"
  }
}

resource "aws_route_table" "Tap-Private-Route" {
  vpc_id = aws_vpc.Tapplent.id

  tags = {
    Name = "Tap-Private-Route"
  }
}

