variable "env_tag" {
    description = " value for env variable"
    type  = string
}

variable "user_id" {
    type=number
}
variable "ec2_name" {
    type=string
}

variable "ec2_ami" {
    type=string
}

variable "ec2_instance" {
    type=string
}

variable "cdir" {
    type=string
}
variable "tenancy" {
    type=string
}
variable "vpc_name" {
    type=string
}

variable "subnet_cdir" {
    type=string
}

variable "subnet_name" {
    type=string
}
