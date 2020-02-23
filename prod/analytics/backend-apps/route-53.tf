resource "aws_route53_record" "weedle--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "weedle.mau.cellulant.com"
    type    = "A"
    records = ["${module.data_analytics_1_weedle.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "vault-01-seel--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "vault-01-seel.mau.cellulant.com"
    type    = "A"
    records = ["${module.vault_01_seel.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "vault-02-seel--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "vault-02-seel.mau.cellulant.com"
    type    = "A"
    records = ["${module.vault_02_seel.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "vault-03-seel--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "vault-03-seel.mau.cellulant.com"
    type    = "A"
    records = ["${module.vault_03_seel.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "mq-01-slam--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "mq-01-slam.mau.cellulant.com"
    type    = "A"
    records = ["${module.mq_01_slam.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "mq-02-slam--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "mq-02-slam.mau.cellulant.com"
    type    = "A"
    records = ["${module.mq_02_slam.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "java-01-slam--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "java-01-slam.mau.cellulant.com"
    type    = "A"
    records = ["${module.java_01_slam.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "java-02-slam--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "java-02-slam.mau.cellulant.com"
    type    = "A"
    records = ["${module.java_02_slam.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "java-03-slam--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "java-03-slam.mau.cellulant.com"
    type    = "A"
    records = ["${module.java_03_slam.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "slam-aurora-db-01-rw--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "slam-aurora-db-01-rw.mau.cellulant.com"
    type    = "CNAME"
    records = ["slam-aurora-db-01.cluster-cyo4n0yy0isg.eu-west-1.rds.amazonaws.com"]
    ttl     = "300"
}

resource "aws_route53_record" "slam-aurora-db-01-ro--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "slam-aurora-db-01-ro.mau.cellulant.com"
    type    = "CNAME"
    records = ["slam-aurora-db-01.cluster-ro-cyo4n0yy0isg.eu-west-1.rds.amazonaws.com"]
    ttl     = "300"
}
resource "aws_route53_record" "slam_rabbitmq_lb_endpoint-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "slam.rabbit.mau.cellulant.com"
    type    = "CNAME"
    records = ["${aws_lb.slam_rabbitmq_lb.dns_name}",]
    ttl     = "300"
}

resource "aws_route53_record" "vault_seel_lb_endpoint-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "vault-seel-lb.mau.cellulant.com"
    type    = "CNAME"
    records = ["${aws_lb.seel_lb.dns_name}",]
    ttl     = "300"
}
