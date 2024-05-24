provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

resource "aws_security_group" "elb_security_group" {
  name = "elb_security"
}

resource "aws_vpc_security_group_ingress_rule" "inbound" {
  security_group_id = aws_security_group.elb_security_group.id
  cidr_ipv4 = "${aws_eip.lb.public_ip}/32"
  from_port = 443
  ip_protocol = "tcp"
  to_port = 443
}