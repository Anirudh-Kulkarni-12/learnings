resource "aws_route_table" "Tap-Public-Route" {
  vpc_id = aws_vpc.Tapplent.id

   route {
    cidr_block = "10.0.1.0/24"
    gateway_id = aws_internet_gateway.Tapplent_igw.id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.Public-Subnet1.id
  route_table_id = aws_route_table.Tap-Public-Route.id
}