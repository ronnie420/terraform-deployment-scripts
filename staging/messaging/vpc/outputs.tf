#CDE_AZ1 SUBNETS
output "CDE_Backends_Apps_AZ1" {
  value = "${aws_subnet.CDE_Backends_Apps_AZ1.id}"


}

output "CDE_ELB_AZ1" {
  value = "${aws_subnet.CDE_ELB_AZ1.id}"


}

output "CDE_Web_Tools_AZ1" {
  value = "${aws_subnet.CDE_Web_Tools_AZ1.id}"


}

output "CDE_JD_Redis_MQ_AZ1" {
  value = "${aws_subnet.CDE_JD_Redis_MQ_AZ1.id}"


}

output "CDE_DB_AZ1" {
  value = "${aws_subnet.CDE_DB_AZ1.id}"


}




#CDE_AZ2 SUBNETS
output "CDE_Backends_Apps_AZ2" {
  value = "${aws_subnet.CDE_Backends_Apps_AZ2.id}"

}

output "CDE_ELB_AZ2" {
  value = "${aws_subnet.CDE_ELB_AZ2.id}"

}

output "CDE_Web_Tools_AZ2" {
  value = "${aws_subnet.CDE_Web_Tools_AZ2.id}"

}

output "CDE_JD_Redis_MQ_AZ2" {
  value = "${aws_subnet.CDE_JD_Redis_MQ_AZ2.id}"

}

output "CDE_DB_AZ2" {
  value = "${aws_subnet.CDE_DB_AZ2.id}"

}



#CDE_TOKENS_AZ1 SUBNETS
output "CDE_TOKENS_ELB_AZ1" {
  value = "${aws_subnet.CDE_TOKENS_ELB_AZ1.id}"


}

output "CDE_TOKENS_Backends_Apps_AZ1" {
  value = "${aws_subnet.CDE_TOKENS_Backends_Apps_AZ1.id}"


}

output "CDE_TOKENS_Web_Tools_AZ1" {
  value = "${aws_subnet.CDE_TOKENS_Web_Tools_AZ1.id}"


}

output "CDE_TOKENS_JD_Redis_MQ_AZ1" {
  value = "${aws_subnet.CDE_TOKENS_JD_Redis_MQ_AZ1.id}"


}

output "CDE_TOKENS_DB_AZ1" {
  value = "${aws_subnet.CDE_TOKENS_DB_AZ1.id}"


}


#CDE_TOKENS_AZ2 SUBNETS
output "CDE_TOKENS_ELB_AZ2" {
  value = "${aws_subnet.CDE_TOKENS_ELB_AZ2.id}"


}

output "CDE_TOKENS_Backends_Apps_AZ2" {
  value = "${aws_subnet.CDE_TOKENS_Backends_Apps_AZ2.id}"


}

output "CDE_TOKENS_Web_Tools_AZ2" {
  value = "${aws_subnet.CDE_TOKENS_Web_Tools_AZ2.id}"


}

output "CDE_TOKENS_JD_Redis_MQ_AZ2" {
  value = "${aws_subnet.CDE_TOKENS_JD_Redis_MQ_AZ2.id}"


}

output "CDE_TOKENS_DB_AZ2" {
  value = "${aws_subnet.CDE_TOKENS_DB_AZ2.id}"


}


output "CDE_COMMON_SG" {
  value = "${aws_security_group.cde-common-sg.id}"

}

output "CDE_TOKENS_COMMON_SG" {
  value = "${aws_security_group.cde-tokens-common-sg.id}"

}

output "CDE_VPC_ID" {
  value = "${aws_vpc.CDE_VPC.id}"
}

output "CDE_TOKENS_VPC_ID" {
  value = "${aws_vpc.CDE_TOKENS_VPC.id}"
}
