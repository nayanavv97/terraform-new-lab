resource "aws_instance" "ec2" {
  ami  = data.aws_ami.example.id
  instance_type = var.ec2_instance
  tags = {
    Name = var.ec2_name
    env=var.env_tag
  }
}


resource "aws_instance" "MetaEc2" {
  ami  = data.aws_ami.example.id
  instance_type = var.ec2_instance
  for_each = toset ( ["dev","test","prod"] )
  tags = {
    Name = each.key
    env=var.env_tag
  }
}

resource "aws_iam_user" "the_account" {
  name = "John${count.index}"
  count=2
}

resource "aws_vpc" "vpc_main" {
  cidr_block       = var.cdir
  instance_tenancy = var.tenancy

  tags = {
    Name = var.vpc_name
    env = var.env_tag
    user_id = var.user_id
  }
}
resource "aws_subnet" "subnet_vpc_main" {
  vpc_id=aws_vpc.vpc_main.id
  cidr_block       = var.subnet_cdir
  tags = {
    Name = var.subnet_name
  }
}

resource "aws_subnet" "new_subnet" {
  vpc_id=data.aws_vpc.vpc_existing.id
  cidr_block = "10.0.10.0/24"
  tags = {
    Name = "new_vpc"
  }
}
