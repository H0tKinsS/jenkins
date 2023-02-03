terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.27"
    }
  }
}
provider "aws" {
    region = "eu-central-1"
}
resource "aws_instance" "example_server" {
    ami = "ami-ami-03e08697c325f02ab"
    instance_type = "t2.micro"

    tags = {
      Name = "ExampleAppServerInstance"
    }
}