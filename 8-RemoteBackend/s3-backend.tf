terraform {
  backend "s3" {
    bucket = "my-bucket-tfstate231"
    key    = "s3remote.tf.state"
    region = "us-east-1"
     access_key = "AKIAVIKT7MOPXTGHDAUM"
  secret_key = "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"
  dynamodb_table = "statelock"
  }
}
