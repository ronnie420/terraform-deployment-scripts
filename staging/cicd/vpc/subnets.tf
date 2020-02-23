resource "aws_subnet" "DTAP_01_ELB_AZ1" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_ELB_AZ1}"
  availability_zone =   "${var.AZ1_NAME}"

tags = {
        Name = "DTAP_01_ELB_AZ1"
    
}

}

resource "aws_subnet" "DTAP_01_ELB_AZ2" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_ELB_AZ2}"
  availability_zone = "${var.AZ2_NAME}"
tags = {
        Name = "DTAP_01_ELB_AZ2"
}

}

resource "aws_subnet" "DTAP_01_Backends_Apps_AZ1" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_Backends_Apps_AZ1}"
  availability_zone = "${var.AZ1_NAME}"

tags = {
        Name = "DTAP_01_Backends_Apps_AZ1"
    
}

}

resource "aws_subnet" "DTAP_01_PUBLIC_AZ1" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_PUBLIC_AZ1}"
  availability_zone = "${var.AZ1_NAME}"

tags = {
        Name = "DTAP_01_PUBLIC_AZ1"
    
}

}

resource "aws_subnet" "DTAP_01_Backends_Apps_AZ2" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_Backends_Apps_AZ2}"
  availability_zone = "${var.AZ2_NAME}"

tags = {
        Name = "DTAP_01_Backends_Apps_AZ2"
    
}

}

resource "aws_subnet" "DTAP_01_Web_Tools_AZ1" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_Web_Tools_AZ1}"
  availability_zone = "${var.AZ1_NAME}"

tags = {
        Name = "DTAP_01_Web_Tools_AZ1"
    
}

}
resource "aws_subnet" "DTAP_01_Web_Tools_AZ2" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_Web_Tools_AZ2}"
  availability_zone = "${var.AZ2_NAME}"

tags = {
        Name = "DTAP_01_Web_Tools_AZ2"
    
}

}

resource "aws_subnet" "DTAP_01_JD_Redis_MQ_AZ1" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_JD_Redis_MQ_AZ1}"
  availability_zone = "${var.AZ1_NAME}"

tags = {
        Name = "DTAP_01_JD_Redis_MQ_AZ1"
    
}

}

resource "aws_subnet" "DTAP_01_JD_Redis_MQ_AZ2" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_JD_Redis_MQ_AZ2}"
  availability_zone = "${var.AZ2_NAME}"

tags = {
        Name = "DTAP_01_JD_Redis_MQ_AZ2"
    
}

}

resource "aws_subnet" "DTAP_01_DB_AZ1" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_DB_AZ1}"
  availability_zone = "${var.AZ1_NAME}"

tags = {
        Name = "DTAP_01_DB_AZ1"
    
}

}

resource "aws_subnet" "DTAP_01_DB_AZ2" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_DB_AZ2}"
  availability_zone = "${var.AZ2_NAME}"

tags = {
        Name = "DTAP_01_DB_AZ2"
    
}

}

resource "aws_subnet" "DTAP_01_PUBLIC_AZ2" {
  vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
  cidr_block = "${var.DTAP_01_PUBLIC_AZ2}"
  availability_zone = "${var.AZ2_NAME}"

tags = {
        Name = "DTAP_01_PUBLIC_AZ2"
    
}

}
