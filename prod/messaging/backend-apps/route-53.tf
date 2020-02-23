#resource "aws_route53_record" "messaging-clank-va-03-mau-cellulant-com-A" {
#    zone_id = "Z1582KLZULOXQA"
#    name    = "messaging-clank-va-03.mau.cellulant.com"
#    type    = "A"
#    records = ["${aws_instance.messaging_clank_va3.private_ip}"]
#    ttl     = "300"
#}
#
#resource "aws_route53_record" "messaging-clank-mq-03-mau-cellulant-com-A" {
#    zone_id = "Z1582KLZULOXQA"
#    name    = "messaging-clank-mq-03.mau.cellulant.com"
#    type    = "A"
#    records = ["${aws_instance.messaging_clank_mq3.private_ip}"]
#    ttl     = "300"
#}
