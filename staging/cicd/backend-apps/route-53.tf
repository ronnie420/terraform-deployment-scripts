resource "aws_route53_record" "dtap-nexus-01-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "nexus-01-dtap.mau.cellulant.com"
    type    = "A"
    records = ["${module.dtap_nexus_01.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "dtap-gitlab-01-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "gitlab-01-dtap.mau.cellulant.com"
    type    = "A"
    records = ["${module.dtap_gitlab_01.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "dtap-consul-01-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "consul-01-dtap.mau.cellulant.com"
    type    = "A"
    records = ["${module.dtap_consul_01.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "dtap-rancher-01-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "rancher-01-dtap.mau.cellulant.com"
    type    = "A"
    records = ["${module.dtap_rancher_01.private_ip[0]}"]
    ttl     = "300"
}

