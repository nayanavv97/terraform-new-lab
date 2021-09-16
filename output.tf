output "public_ip_ec2" {
    value = aws_instance.ec2.public_ip
}

output "vpc_id" {
    value = aws_vpc.vpc_main.id
}

