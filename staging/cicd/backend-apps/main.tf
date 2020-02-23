provider "aws" {
  region = "us-east-2"
}

# Store state in s3
terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-infra-configs"
    region  = "eu-west-1"
    key     = "staging/cicd/backend-apps/terraform.tfstate"
  }
}

# Get remote state data
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "terraform-infra-configs"
    key    = "staging/cicd/vpc/terraform.tfstate"
    region = "eu-west-1"
  }
}

