provider "aws" {
  region = "us-east-1"
  access_key = var.jpaccess
  secret_key = var.jpsecret
}

resource "aws_iam_user" "jayexternalIDrole" {
  name = var.usernumber
  path = "/system/"
}