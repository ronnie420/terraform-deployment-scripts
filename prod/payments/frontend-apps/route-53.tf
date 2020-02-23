resource "aws_route53_record" "payments_ct1_snowball--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ct1-snowball.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_ct1_snowball.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "payments_ct2_snowball--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ct2-snowball.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_ct2_snowball.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "checkout_ct_01-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "checkout-ct-01.mau.cellulant.com."
    type    = "A"
    records = ["${module.ct_01_checkout.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "checkout_ct_02-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "checkout-ct-02.mau.cellulant.com."
    type    = "A"
    records = ["${module.ct_02_checkout.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "checkout_ct_03-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "checkout-ct-03.mau.cellulant.com."
    type    = "A"
    records = ["${module.ct_03_checkout.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "checkout_ct_04-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "checkout-ct-04.mau.cellulant.com."
    type    = "A"
    records = ["${module.ct_04_checkout.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "checkout_ct_05-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "checkout-ct-05.mau.cellulant.com."
    type    = "A"
    records = ["${module.ct_05_checkout.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "checkout_ct_06-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "checkout-ct-06.mau.cellulant.com."
    type    = "A"
    records = ["${module.ct_06_checkout.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "checkout_ct_07-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "checkout-ct-07.mau.cellulant.com."
    type    = "A"
    records = ["${module.ct_07_checkout.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "checkout_ct_08-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "checkout-ct-08.mau.cellulant.com."
    type    = "A"
    records = ["${module.ct_08_checkout.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "checkout_jd_01-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "checkout-jd-01.mau.cellulant.com."
    type    = "A"
    records = ["${module.jd_01_checkout.private_ip[0]}"]
    ttl     = "300"
}
resource "aws_route53_record" "payments_gh_ct1--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ct1-gh.mau.cellulant.com."
    type    = "A"
    records = ["${module.payments_gh_ct1.private_ip[0]}"]
    ttl     = "300"

}
