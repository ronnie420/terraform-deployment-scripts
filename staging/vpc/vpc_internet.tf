resource "aws_vpc" "INTERNET_VPC" {
  cidr_block           = "${var.INTERNET_VPC_CIDR}"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

tags = {
    Name        = "${var.INTERNET_VPC_NAME}"
    Environment = "Staging"
}

}

