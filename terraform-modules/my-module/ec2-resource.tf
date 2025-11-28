provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA23OB5HYOQR5DAI6B"
  secret_key = "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"
}

resource "aws_instance" "my-ec2" {
  ami              = "ami-0ecb62995f68bb549"
  instance_type    = "t2.micro"
}