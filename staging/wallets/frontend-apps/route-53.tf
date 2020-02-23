resource "aws_route53_record" "wallet-demo-01--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "wallet-demo-01.mau.cellulant.com"
    type    = "A"
    records = ["${module.wallet_demo_01.private_ip[0]}"]
    ttl     = "300"
}
resource "aws_route53_record" "wallet_demo_lb_endpoint-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "wallet-demo-lb.mau.cellulant.com"
    type    = "CNAME"
    records = ["${aws_lb.wallet_demo_lb.dns_name}",]
    ttl     = "300"
}
