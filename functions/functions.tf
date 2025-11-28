provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAZUBAPA4P3ESG5MG7"
  secret_key = "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"
}

locals {
  time = formatdate(("DD MMM YYY hh:mm ZZZ"), timestamp())
}

variable "ami" {
  type = map(any)
  default = {
    "us-east-1" = "ami-0fa3fe0fa7920f68e"
    "us-east-2" = "ami-025ca978d4c1d9825"
    "us-west-1" = "ami-03978d951b279ec0b"
  }
}

variable "region" {
  default = "us-west-1"
}

resource "aws_instance" "ec2" {
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"
}

output "timestamp" {
  value = local.time
}