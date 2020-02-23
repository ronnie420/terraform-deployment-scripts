provider "aws" {
  region = "eu-west-1"
}

# Store state in s3
terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-infra-configs"
    region  = "eu-west-1"
    key     = "prod/messaging/frontend-apps/terraform.tfstate"
  }
}

