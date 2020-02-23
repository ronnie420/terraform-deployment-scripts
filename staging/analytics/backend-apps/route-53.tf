resource "aws_route53_record" "mq-01-slam-beta--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "mq-01-slam-beta.mau.cellulant.com"
    type    = "A"
    records = ["${module.mq_01_slam_beta.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "java-01-slam-beta--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "java-01-slam-beta.mau.cellulant.com"
    type    = "A"
    records = ["${module.java_01_slam_beta.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "web-01-slam-beta--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "web-01-slam-beta.mau.cellulant.com"
    type    = "A"
    records = ["${module.web_01_slam_beta.private_ip[0]}"]
    ttl     = "300"
}

resource "aws_route53_record" "slam-aurora-db-01-beta-rw--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "slam-aurora-db-01-beta-rw.mau.cellulant.com"
    type    = "CNAME"
    records = ["slam-aurora-db-01-beta.cluster-cjerrcfwqdjd.us-east-2.rds.amazonaws.com"]
    ttl     = "300"
}

resource "aws_route53_record" "slam-aurora-db-01-beta-ro--mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "slam-aurora-db-01-beta-ro.mau.cellulant.com"
    type    = "CNAME"
    records = ["slam-aurora-db-01-beta.cluster-ro-cjerrcfwqdjd.us-east-2.rds.amazonaws.com"]
    ttl     = "300"
}
