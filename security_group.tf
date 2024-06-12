resource "aws_security_group" "Test_server_Security" {
    name = "Terraform_Security"
    vpc_id = aws_vpc.Tapplent.id

    tags = {
      Name = "Terraform_Security"
    }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
    security_group_id = aws_security_group.Test_server_Security.id
    cidr_ipv4 = aws_vpc.Tapplent.cidr_block
    from_port = 443
    ip_protocol = "tcp"
    to_port = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_tls_ipv4_out" {
    security_group_id = aws_security_group.Test_server_Security.id
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "-1"
  
}