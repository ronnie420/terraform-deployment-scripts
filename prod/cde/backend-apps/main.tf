provider "aws" {
  region = "eu-west-1"
}

# Store state in s3
terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-infra-configs"
    region  = "eu-west-1"
    key     = "prod/cde/backend-apps/terraform.tfstate"
  }
}

# Get remote state data
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "terraform-infra-configs"
    key    = "prod/cde/vpc/terraform.tfstate"
    region = "eu-west-1"
  }
}

