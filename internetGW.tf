resource "aws_internet_gateway" "Tapplent_igw" {
  vpc_id = aws_vpc.Tapplent.id

  tags = {
    Name = "Tapplent_igw"
  }
}

output "TAP-IGW" {
  value = aws_internet_gateway.Tapplent_igw.id
}