provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVIKT7MOPXTGHDAUM"
  secret_key = "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"
}

resource "aws_instance" "my-ec2" {
  ami              = "ami-0ecb62995f68bb549"
  instance_type    = "t2.micro"
}

resource "aws_instance" "toimport" {
  ami="ami-0fa3fe0fa7920f68e"
  instance_type = "t3.micro"
}