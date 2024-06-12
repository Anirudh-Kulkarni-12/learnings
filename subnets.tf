resource "aws_subnet" "Public-Subnet1" {

  count = 3

  vpc_id = aws_vpc.Tapplent.id
  cidr_block = cidrsubnet(aws_vpc.Tapplent.cidr_block, 4, count.index+1)
  availability_zone = element(var.availability-zone, count.index)
  map_public_ip_on_launch = true 

  tags = {
    Name = "Public-Subnet-${count.index}"
  }
}

resource "aws_subnet" "Private-Subnet1" {
    count = 3
    vpc_id = aws_vpc.Tapplent.id
    cidr_block = cidrsubnet(aws_vpc.Tapplent.cidr_block, 8, count.index+1)
    availability_zone = element(var.availability-zone, count.index)


    tags = {
      Name = "Private-Subnet-${count.index}"
    }
}
