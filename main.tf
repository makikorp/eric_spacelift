terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.2.0.0/16"

  tags = {
    Name = "my-vpc"
  }
}

resource "aws_instance" "app_server" {
  ami = "ami-053ac55bdcfe96e85"
  instance_type = "t2.micro"

  tags = {
    Name = "my-instance"
  }
}
