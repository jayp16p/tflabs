terraform {
  backend "s3" {
    bucket = "my-bucket-tfstate231"
    key    = "s3remote.tf.state"
    region = "us-east-1"
     access_key = "AKIAVSGXU2ZOEN4OVAVL"
  secret_key = "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"
  }
}
