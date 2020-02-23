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
resource "aws_route53_record" "slam_web_lb_endpoint-mau-cellulant-com-A" {
    zone_id = "Z188RJJBSUEFSR"
    name    = "slam-web-lb.prod.cellulant.com"
    type    = "CNAME"
    records = ["${aws_lb.slam_web_lb.dns_name}",]
    ttl     = "300"
}

resource "aws_route53_record" "slam_web_internal_lb_endpoint-mau-cellulant-com-A" {
    zone_id = "Z188RJJBSUEFSR"
    name    = "slam-web-lb-internal.prod.cellulant.com"
    type    = "CNAME"
    records = ["${aws_lb.slam_web_lb_internal.dns_name}",]
    ttl     = "300"
}
