resource "aws_route53_record" "payments_ca1_snowball--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ca1-snowball.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_ca1_snowball.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_ca2_snowball--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ca2-snowball.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_ca2_snowball.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_ma1_snowball--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ma1-snowball.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_ma1_snowball.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_ma2_snowball--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ma2-snowball.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_ma2_snowball.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_ca1_jd_snowball--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ca1-jd-snowball.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_ca1_jd_snowball.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_ca2_jd_snowball--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ca2-jd-snowball.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_ca2_jd_snowball.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_ma1_jd_snowball--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ma1-jd-snowball.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_ma1_jd_snowball.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_ma2_jd_snowball--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ma2-jd-snowball.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_ma2_jd_snowball.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_gh_mq1--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "mq1-gh.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_gh_mq1.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_gh_mq2--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "mq2-gh.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_gh_mq2.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_gh_ca_jd1--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ca-jd1-gh.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_gh_ca_jd1.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_gh_ma_jd1--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ma-jd1-gh.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_gh_ma_jd1.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_gh_ma1--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ma1-gh.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_gh_ma1.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_gh_ca1--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ca1-gh.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_gh_ca1.private_ip[0]}"]
    ttl     = "300"
}
resource "aws_route53_record" "payments_gh_mq_endpoint-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "payments-gh.rabbit.mau.cellulant.com"
    type    = "CNAME"
    records = ["${aws_lb.payments_gh_rabbitmq.dns_name}",]
    ttl     = "300"


}
