resource "aws_vpc" "Tapplent" {
  cidr_block = var.aws_vpcId
  
  tags = {
    Name = "Tapplent"
  }
}

output "Tapplent1" {
  value = aws_vpc.Tapplent.id
}