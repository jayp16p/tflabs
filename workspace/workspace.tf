provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVIKT7MOPXTGHDAUM"
  secret_key = "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"
}

resource "aws_instance" "my-ec2" {
  ami              = "ami-0ecb62995f68bb549"
  instance_type    = lookup(var.myvar,terraform.workspace)
}

variable "myvar" {
  type = map
  default = {
    default = "t2.small"
    dev = "t2.micro"
    prod = "t3.micro"
  }
}