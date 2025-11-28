provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4AUBBJOS7ELV6TNN"
  secret_key = "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"
}

resource "aws_iam_user" "user" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.user[*].arn
}