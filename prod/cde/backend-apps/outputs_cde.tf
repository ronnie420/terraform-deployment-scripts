output "cde_php_1_private_ip" {
  value = "${aws_instance.cde_php_1.private_ip}"
}

output "cde_mq1_private_ip" {
  value = "${module.cde_mq1.private_ip[0]}"
}

output "cde_mq2_private_ip" {
  value = "${module.cde_mq2.private_ip[0]}"
}

output "non_cde_mq1_private_ip" {
  value = "${module.non_cde_mq1.private_ip[0]}"
}

output "non_cde_mq2_private_ip" {
  value = "${module.non_cde_mq2.private_ip[0]}"
}

output "cde_php_2_private_ip" {
  value = "${aws_instance.cde_php_2.private_ip}"
}

output "cde_java_1_private_ip" {
  value = "${aws_instance.cde_java_1.private_ip}"
}

output "cde_java_2_private_ip" {
  value = "${aws_instance.cde_java_2.private_ip}"
}
output "cde_php_1_hostname" {
  value = "${aws_route53_record.cde-php-1-mau-cellulant-com-A.name}"

}

output "cde_php_2_hostname" {
  value = "${aws_route53_record.cde-php-2-mau-cellulant-com-A.name}"

}
output "cde_java_1_hostname" {
  value = "${aws_route53_record.cde-java-1-mau-cellulant-com-A.name}"

}
output "cde_java_2_hostname" {
  value = "${aws_route53_record.cde-java-2-mau-cellulant-com-A.name}"

}

