# Store state in s3
terraform {
backend "s3" {
    encrypt = true
    bucket  = "terraform-infra-configs"
    region  = "eu-west-1"
    key     = "prod/cde/vpc/terraform.tfstate"
  
}

}

provider "aws" {
  region = "eu-west-1"

}

provider "aws" {
  alias  = "peer"
  region = "eu-central-1"
  # Accepter's credentials.

}

resource "aws_vpc" "CDE_VPC" {
  cidr_block           = "${var.CDE_CIDR}"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

tags = {
    Name        = "${var.CDE_VPC_NAME}"
    Environment = "Production"
  
}

}

resource "aws_vpc" "CDE_TOKENS_VPC" {
  cidr_block           = "${var.CDE_TOKEN_CIDR}"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

tags = {
    Name        = "${var.CDE_TOKEN_VPC_NAME}"
    Environment = "Production"
  
}

}

resource "aws_internet_gateway" "CDE_GW" {
  vpc_id = "${aws_vpc.CDE_VPC.id}"

tags = {
    Name = "CDE_Internet_Gateway"
  
}

}

resource "aws_internet_gateway" "CDE_TOKENS_GW" {
  vpc_id = "${aws_vpc.CDE_TOKENS_VPC.id}"

tags = {
    Name = "CDE_TOKENS_Internet_Gateway"
  
}

}

resource "aws_vpc_peering_connection" "cde_to_frankfurt" {
  peer_owner_id = "${var.CDE_OWNER_ID}"
  vpc_id        = "${var.CDE_VPC_ID}"
  peer_vpc_id   = "${var.FRANKFURT_VPC_ID}"
  peer_region   = "${var.staging_region}"

tags = {
    Name = "frankfurt_hub_ireland_cde"
  
}

}

resource "aws_vpc_peering_connection_accepter" "peer" {
  provider                  = aws.peer
  vpc_peering_connection_id = "${aws_vpc_peering_connection.cde_to_frankfurt.id}"
  auto_accept               = true

tags = {
    Name = "frankfurt_ireland_cde"
    Side = "Accepter"
  
}

}

resource "aws_vpc_peering_connection" "cde_tokens_to_frankfurt" {
  peer_owner_id = "${var.CDE_TOKENS_OWNER_ID}"
  vpc_id        = "${var.CDE_TOKENS_VPC_ID}"
  peer_vpc_id   = "${var.FRANKFURT_VPC_ID}"
  peer_region   = "${var.staging_region}"
    

tags = {
    Name = "frankfurt_hub_ireland_cde_TOKENS"
  
}
}
resource "aws_vpc_peering_connection_accepter" "peer_cde_tokens" {
  provider                  = aws.peer
  vpc_peering_connection_id = "${aws_vpc_peering_connection.cde_tokens_to_frankfurt.id}"
  auto_accept               = true

tags = {
    Name = "frankfurt_ireland_cde_tokens"
    Side = "Accepter"
  
}

}
