provider "aws" {
  region = "us-east-2"
}

# Store state in s3
terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-infra-configs"
    region  = "eu-west-1"
    key     = "staging-ohio/analytics/backend-apps/terraform.tfstate"
  }
}


