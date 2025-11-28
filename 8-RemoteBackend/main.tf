provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVSGXU2ZOEN4OVAVL"
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