output "cde_tokens_php_1_private_ip" {
  value = "${aws_instance.cde_tokens_php_1.private_ip}"
}

output "cde_tokens_php_2_private_ip" {
  value = "${aws_instance.cde_tokens_php_2.private_ip}"
}

output "cde_tokens_java_1_private_ip" {
  value = "${aws_instance.cde_tokens_java_1.private_ip}"
}

output "cde_tokens_java_2_private_ip" {
  value = "${aws_instance.cde_tokens_java_2.private_ip}"
}

output "cde_tokens_sqs_url" {
  value = "${aws_sqs_queue.CDE-TOKENS-SQS-1.id}"
}
output "cde_tokens_php_1_hostname" {
  value = "${aws_route53_record.cde-tokens-php-1-mau-cellulant-com-A.name}"
}

output "cde_tokens_php_2_hostname" {
  value = "${aws_route53_record.cde-tokens-php-2-mau-cellulant-com-A.name}"
}
output "cde_tokens_java_1_hostname" {
  value = "${aws_route53_record.cde-tokens-java-1-mau-cellulant-com-A.name}"
}
output "cde_tokens_java_2_hostname" {
  value = "${aws_route53_record.cde-tokens-java-2-mau-cellulant-com-A.name}"
}
