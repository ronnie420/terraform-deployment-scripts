resource "aws_route53_record" "wallet-03-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "wallet-03.mau.cellulant.com"
    type    = "A"
    #records = ["${aws_instance.zampost_wallet_server.private_ip}"]
    records = ["${module.zampost_wallet_server.private_ip[0]}"]
    ttl     = "300"
}
