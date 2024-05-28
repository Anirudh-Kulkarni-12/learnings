resource "aws_vpc" "Tapplent" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "Tapplent"
  }
}