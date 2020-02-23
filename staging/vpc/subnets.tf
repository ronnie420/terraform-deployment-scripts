resource "aws_subnet" "ALB_Subnet_AZ1" {
  vpc_id     = "${aws_vpc.INTERNET_VPC.id}"
  cidr_block = "${var.ALB_Subnet_AZ1}"
  availability_zone =   "${var.AZ1_NAME}"
tags = {
        Name = "ALB_Subnet_AZ1"
}
}

resource "aws_subnet" "ALB_Subnet_AZ2" {
  vpc_id     = "${aws_vpc.INTERNET_VPC.id}"
  cidr_block = "${var.ALB_Subnet_AZ2}"
  availability_zone =   "${var.AZ2_NAME}"
tags = {
        Name = "ALB_Subnet_AZ2"
}
}

resource "aws_subnet" "Public_Subnet_AZ1" {
  vpc_id     = "${aws_vpc.INTERNET_VPC.id}"
  cidr_block = "${var.Public_Subnet_AZ1}"
  availability_zone =   "${var.AZ1_NAME}"
tags = {
        Name = "Public_Subnet_AZ1"
}
}

resource "aws_subnet" "Public_Subnet_AZ2" {
  vpc_id     = "${aws_vpc.INTERNET_VPC.id}"
  cidr_block = "${var.Public_Subnet_AZ2}"
  availability_zone =   "${var.AZ2_NAME}"
tags = {
        Name = "Public_Subnet_AZ2"
}
}
