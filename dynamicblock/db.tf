provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4AUBBJOS7ELV6TNN"
  secret_key = "5kIWs9X6/NllrBKbgKUk24dFQItCE6gOozsjVDX2"
}

variable "ports" {
  type    = list(number)
  default = [22, 80, 443, 8080]
}


resource "aws_security_group" "example_sg" {
  name        = "example_sg"
  description = "Example security group"
  dynamic "ingress" {
    for_each = var.ports
    iterator = ports
    content {
      from_port   = ports.value
      to_port     = ports.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}