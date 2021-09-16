data "aws_vpc" "vpc_existing" {
    id="vpc-0659e384ad9322498"
}

data "aws_ami" "example" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu-*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}