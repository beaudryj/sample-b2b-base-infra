terraform {
  backend "s3" {}
}

data "terraform_remote_state" "auth_lambda" {
  backend = "s3"
  config = {
    bucket   = var.bucket
    key      = var.auth_lambda_state_key
    region   = var.region
    role_arn = var.role_arn
  }
}