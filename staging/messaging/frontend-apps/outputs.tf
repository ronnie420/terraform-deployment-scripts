output "messaging_clank_vt3_private_ip" {
  value = "${aws_instance.messaging_clank_vt3.private_ip}"

}
output "messaging_clank_mon3_private_ip" {
  value = "${aws_instance.messaging_clank_mon3.private_ip}"

}
