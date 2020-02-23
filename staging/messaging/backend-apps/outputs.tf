output "messaging_clank_va1_private_ip" {
  value = "${aws_instance.messaging_clank_va1.private_ip}"

}
output "messaging_clank_va2_private_ip" {
  value = "${aws_instance.messaging_clank_va2.private_ip}"
}
output "messaging_clank_va3_private_ip" {
  value = "${aws_instance.messaging_clank_va3.private_ip}"
}
output "messaging_clank_va4_private_ip" {
  value = "${aws_instance.messaging_clank_va4.private_ip}"
}
