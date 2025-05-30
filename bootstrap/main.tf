provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "terraform-demo-s3-state-aadesh"

  versioning {
    enabled = true
  }

  tags = {
    Name = "terraform-state-bucket"
  }
}

resource "aws_dynamodb_table" "tf_lock" {
  name = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "terraform-lock-table"
  }
}
