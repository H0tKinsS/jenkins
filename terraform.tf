provider "aws" {
    region = "eu-central-1"
}
resource "aws_instance "wordpress_instance" {
    ami = "ami-09042b2f6d07d164a"
    instance_type = "t2.micro"
    tags = {
        Name = "WordPress Instance"
    }
}
resource "aws_security_group" "wordpress_sg" {
    name        = "wordpress_sg"
    description = "Allow HTTP and HTTPS traffic"

    ingress {
        from_port = 80
        to_port   = 80
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 443
        to_port   = 443
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "WordPress Security Group"
    }
}