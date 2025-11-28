provider "aws" {
    region = "us-east-1"
    access_key = "AKIATVVK5RSKEQFQFC6Q"
    secret_key = "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"
}

variable "flag" {
  
}

resource "aws_instance" "name" {
  ami = "ami-0fa3fe0fa7920f68e"
  instance_type = "t2.micro"
  count = var.flag == true ? 2 : 0
}

resource "aws_instance" "name2" {
  ami = "ami-0fa3fe0fa7920f68e"
  instance_type = "t2.micro"
  count = var.flag == false ? 1 : 0
} 