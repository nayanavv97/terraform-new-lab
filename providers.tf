terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.58"
    }
  }
  backend "s3" {
    bucket = "awsbucket23456"
    key = "awsbucket23456/us-east-2/key"
    region = "us-east-2"
  }
}

provider "aws" {
  # Configuration options
  region="us-east-2"
}