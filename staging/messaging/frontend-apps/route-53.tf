resource "aws_route53_record" "messaging-clank-vt-03-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "messaging-clank-vt-03.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.messaging_clank_vt3.private_ip}"]
    ttl     = "300"
}

resource "aws_route53_record" "messaging-clank-mon-03-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "messaging-clank-mon-03.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.messaging_clank_mon3.private_ip}"]
    ttl     = "300"
}
