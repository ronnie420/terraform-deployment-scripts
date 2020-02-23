#DTAP_01_AZ1 SUBNETS
output "DTAP_01_Backends_Apps_AZ1" {
  value = "${aws_subnet.DTAP_01_Backends_Apps_AZ1.id}"


}

output "DTAP_01_ELB_AZ1" {
  value = "${aws_subnet.DTAP_01_ELB_AZ1.id}"


}

output "DTAP_01_Web_Tools_AZ1" {
  value = "${aws_subnet.DTAP_01_Web_Tools_AZ1.id}"


}

output "DTAP_01_JD_Redis_MQ_AZ1" {
  value = "${aws_subnet.DTAP_01_JD_Redis_MQ_AZ1.id}"


}

output "DTAP_01_DB_AZ1" {
  value = "${aws_subnet.DTAP_01_DB_AZ1.id}"


}




#DTAP_01_AZ2 SUBNETS
output "DTAP_01_Backends_Apps_AZ2" {
  value = "${aws_subnet.DTAP_01_Backends_Apps_AZ2.id}"

}

output "DTAP_01_ELB_AZ2" {
  value = "${aws_subnet.DTAP_01_ELB_AZ2.id}"

}

output "DTAP_01_Web_Tools_AZ2" {
  value = "${aws_subnet.DTAP_01_Web_Tools_AZ2.id}"

}

output "DTAP_01_JD_Redis_MQ_AZ2" {
  value = "${aws_subnet.DTAP_01_JD_Redis_MQ_AZ2.id}"

}

output "DTAP_01_DB_AZ2" {
  value = "${aws_subnet.DTAP_01_DB_AZ2.id}"

}

output "DTAP_01_COMMON_SG" {
  value = "${aws_security_group.dtap_01_common_sg.id}"

}

output "DTAP_01_VPC_ID" {
  value = "${aws_vpc.DTAP_01_VPC.id}"
}

