variable "aws_region" {
    default = "ap-south-2"
}

variable "aws_vpcId" {
    default = "10.0.0.0/16"
}

variable "availability-zone" {
  type = list(string)
  default = [ "ap-south-2a", "ap-south-2b", "ap-south-2c" ]
}

variable "sg_ports" {
  default = [-1]
}