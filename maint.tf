terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
    template = {
      source = "hashicorp/template"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

resource "aws_instance" "ec2" {
    ami = "ami-0de16b80425613673"
    instance_type = "t2.micro"

    tags = {
        Name = "TC_EC2"
    }
}