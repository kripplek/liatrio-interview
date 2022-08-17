terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "liatriointerviewterrafromstate"
    dynamodb_table = "terraform-state-lock-dynamo"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}

resource "aws_s3_bucket" "state_bucket" {

  bucket = "liatriointerviewterrafromstate"
  acl    = "private"
}

resource "aws_dynamodb_table" "dynamodb_terraform_state" {
  name           = "terraform-state-lock"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}

