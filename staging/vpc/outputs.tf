#ALB_Subnet_AZ1 SUBNETS
output "ALB_Subnet_AZ1" {
  value = "${aws_subnet.ALB_Subnet_AZ1.id}"
}

#ALB_Subnet_AZ2 SUBNETS
output "ALB_Subnet_AZ2" {
  value = "${aws_subnet.ALB_Subnet_AZ2.id}"
}

#Public_Subnet_AZ1 SUBNETS
output "Public_Subnet_AZ1" {
  value = "${aws_subnet.Public_Subnet_AZ1.id}"
}

#Public_Subnet_AZ2 SUBNETS
output "Public_Subnet_AZ2" {
  value = "${aws_subnet.Public_Subnet_AZ2.id}"
}
output "INTERNET_VPC_ID" {
  value = "${aws_vpc.INTERNET_VPC.id}"
}

