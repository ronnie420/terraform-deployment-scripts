resource "aws_route53_record" "cde-php-1-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "cde-php-01-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.cde_php_1.private_ip}"]
    ttl     = "300"
}

resource "aws_route53_record" "cde-php-2-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "cde-php-02-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.cde_php_2.private_ip}"]
    ttl     = "300"
}

resource "aws_route53_record" "cde-java-1-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "cde-java-01-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.cde_java_1.private_ip}"]
    ttl     = "300"
}

resource "aws_route53_record" "cde-java-2-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "cde-java-02-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.cde_java_2.private_ip}"]
    ttl     = "300"
}

resource "aws_route53_record" "cde-tokens-php-1-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "non-cde-php-01-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.cde_tokens_php_1.private_ip}"]
    ttl     = "300"
}

resource "aws_route53_record" "cde-tokens-php-2-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "non-cde-php-02-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.cde_tokens_php_2.private_ip}"]
    ttl     = "300"
}

resource "aws_route53_record" "cde-tokens-java-1-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "non-cde-java-01-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.cde_tokens_java_1.private_ip}"]
    ttl     = "300"
}

resource "aws_route53_record" "cde-tokens-java-2-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "non-cde-java-02-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${aws_instance.cde_tokens_java_2.private_ip}"]
    ttl     = "300"
}

resource "aws_route53_record" "read-db-1-pichu-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "read-db1-pichu"
    type    = "CNAME"
    set_identifier = "read-db1"
    ttl = 60
    records        = ["non-cde-db1-aurora-instance-1-eu-west-1b.cyo4n0yy0isg.eu-west-1.rds.amazonaws.com"]
    weighted_routing_policy {
        weight = 10
    }
}

resource "aws_route53_record" "write-db-1-pichu-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "write-db1-pichu"
    type    = "CNAME"
    set_identifier = "write-db1"
    ttl = 60
    records        = ["non-cde-db1-aurora-instance-1.cyo4n0yy0isg.eu-west-1.rds.amazonaws.com"]
    weighted_routing_policy {
        weight = 10
    }
}

resource "aws_route53_record" "ecc-cde-pichu-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ecc-cde-pichu"
    type    = "CNAME"
    set_identifier = "ecc-cde-pichu"
    ttl = 60
    records        = ["ecc-cde-pichu.euvxbu.0001.euw1.cache.amazonaws.com"]
    weighted_routing_policy {
        weight = 10
    }
}

resource "aws_route53_record" "ecc-non-cde-pichu-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "ecc-non-cde-pichu"
    type    = "CNAME"
    set_identifier = "ecc-non-cde-pichu"
    ttl = 60
    records        = ["ecc-non-cde-pichu.euvxbu.0001.euw1.cache.amazonaws.com"]
    weighted_routing_policy {
        weight = 10
    }
}
resource "aws_route53_record" "non_cde_mq1-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "non-cde-mq-01-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${module.non_cde_mq1.private_ip[0]}"]
    ttl     = "300"

}

resource "aws_route53_record" "non_cde_mq2-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "non-cde-mq-02-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${module.non_cde_mq2.private_ip[0]}"]
    ttl     = "300"

}

resource "aws_route53_record" "cde_mq1-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "cde-mq-01-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${module.cde_mq1.private_ip[0]}"]
    ttl     = "300"

}

resource "aws_route53_record" "cde_mq2-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "cde-mq-02-pichu.mau.cellulant.com"
    type    = "A"
    records = ["${module.cde_mq2.private_ip[0]}"]
    ttl     = "300"

}

resource "aws_route53_record" "non_cde_mq_endpoint-mau-cellulant-com-A" {
    zone_id = "Z1582KLZULOXQA"
    name    = "pichu.non-cde.rabbit.mau.cellulant.com"
    type    = "CNAME"
    records = ["${aws_lb.non_cde_pichu_rabbitmq.dns_name}",]
    ttl     = "300"
}

resource "aws_route53_record" "cde_mq_ui_endpoint-mau-cellulant-com-A" {
    zone_id = "Z188RJJBSUEFSR"
    name    = "pichu.cde-ui.rabbit.prod.cellulant.com"
    type    = "CNAME"
    records = ["${aws_lb.pichu_cde_rabbitmq_ui_lb.dns_name}",]
    ttl     = "300"
}

resource "aws_route53_record" "non_cde_mq_ui_endpoint-mau-cellulant-com-A" {
    zone_id = "Z188RJJBSUEFSR"
    name    = "pichu.non-cde-ui.rabbit.prod.cellulant.com"
    type    = "CNAME"
    records = ["${aws_lb.pichu_non_cde_rabbitmq_ui_lb.dns_name}",]
    ttl     = "300"
}


