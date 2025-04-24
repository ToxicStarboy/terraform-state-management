terraform {
  backend "s3" {
    bucket = "terraform-demo-s3-state-aadesh"
    key = "aadesh/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}