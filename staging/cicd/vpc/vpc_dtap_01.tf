resource "aws_vpc" "DTAP_01_VPC" {
  cidr_block           = "${var.DTAP_01_CIDR}"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

tags = {
    Name        = "${var.DTAP_01_VPC_NAME}"
    Environment = "Staging"
}

}

#provider "aws" {
#  alias  = "peer"
#  region = "${var.accept_region}"
#  # Accepter's credentials.
#}
#data "aws_caller_identity" "current" {}

resource "aws_internet_gateway" "DTAP_01_GW" {
  vpc_id = "${aws_vpc.DTAP_01_VPC.id}"

tags = {
    Name = "DTAP_01_Internet_Gateway"
}
}

##Requester Side
#resource "aws_vpc_peering_connection" "peer" {
#  #peer_owner_id = "${var.DTAP_01_OWNER_ID}"
#  peer_owner_id = "${data.aws_caller_identity.current.account_id}"
#  vpc_id        = "${aws_vpc.DTAP_01_VPC.id}"
#  peer_vpc_id   = "${var.FRANKFURT_VPC_ID}"
#  peer_region   = "${var.accept_region}"
#
#tags = {
#    Name = "frankfurt_hub_ohio_dtap_01"
#    Side = "Requester"
#}
#
#}
#
#resource "aws_vpc_peering_connection_accepter" "peer" {
#  provider                  = aws.peer
#  vpc_peering_connection_id = "${aws_vpc_peering_connection.peer.id}"
#  auto_accept               = false
#
#tags = {
#    Name = "frankfurt_ohio_dtap_01"
#    Side = "Accepter"
#
#
#}
#
#}
