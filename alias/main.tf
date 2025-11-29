resource "aws_eip" "name" {
  provider = aws.canada
}

resource "aws_eip" "name2" {
  provider = aws.usa
}