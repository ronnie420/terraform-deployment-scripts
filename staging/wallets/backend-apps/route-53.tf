resource "aws_route53_record" "mw-wallet-02-prod-cellulant-com-A" {
    zone_id = "Z188RJJBSUEFSR"
    name    = "mw-wallet-02.prod.cellulant.com"
    type    = "A"
    records = ["${aws_instance.mw-wallet-02.private_ip}"]
    ttl     = "300"
}
resource "aws_route53_record" "mw-wallet-04-prod-cellulant-com-A" {
    zone_id = "Z188RJJBSUEFSR"
    name    = "wallet-04.prod.cellulant.com"
    type    = "A"
    records = ["${aws_instance.mw-wallet-04.private_ip}"]
    ttl     = "300"
}
