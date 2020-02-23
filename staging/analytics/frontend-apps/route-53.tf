resource "aws_route53_record" "web-01-slam--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "web-01-slam.mau.cellulant.com"
    type    = "A"
    records = ["${module.web_01_slam.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "web-02-slam--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "web-02-slam.mau.cellulant.com"
    type    = "A"
    records = ["${module.web_02_slam.private_ip[0]}"]
    ttl     = "300"
}

