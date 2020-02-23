resource "aws_route53_record" "messaging-clank-va-01-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "messaging-clank-va-01.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.messaging_clank_va1.private_ip}"]
    ttl     = "300"
}

resource "aws_route53_record" "messaging-clank-va-02-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "messaging-clank-va-02.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.messaging_clank_va2.private_ip}"]
    ttl     = "300"
}
resource "aws_route53_record" "messaging-clank-va-03-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "messaging-clank-va-03.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.messaging_clank_va3.private_ip}"]
    ttl     = "300"
}
resource "aws_route53_record" "messaging-clank-va-04-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "messaging-clank-va-04.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.messaging_clank_va4.private_ip}"]
    ttl     = "300"
}
