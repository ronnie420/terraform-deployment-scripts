output "freeipa_02_private_ip" {
  value = "${aws_instance.freeipa-02.private_ip}"

}
output "cpanel_02_public_ip" {
  value = "${aws_instance.freeipa-02.public_ip}"

}
