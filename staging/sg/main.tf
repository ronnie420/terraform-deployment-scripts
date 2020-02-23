provider "aws" {
  region = "eu-central-1"
}

# Store state in s3
terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-infra-configs"
    region  = "eu-west-1"
    key     = "staging/sg/terraform.tfstate"
  }
}


