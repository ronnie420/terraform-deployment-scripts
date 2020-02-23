resource "aws_lb_target_group" "non_cde_pichu_rabbitmq_tg" {
  name        = "non-cde-pichu-rabbitmq-tg"
  port        = 5672
  protocol    = "TCP"
  vpc_id      = "${var.CDE_TOKENS_VPC_ID}"
  target_type = "instance"
  stickiness {
    type = "lb_cookie"
    enabled = false
  }
}
resource "aws_lb_target_group_attachment" "non_cde_pichu_rabbitmq_mq1_att" {
  target_group_arn = "${aws_lb_target_group.non_cde_pichu_rabbitmq_tg.arn}"
  target_id        = "${module.non_cde_mq1.id[0]}"
  port             = 5672
}

resource "aws_lb_target_group_attachment" "non_cde_pichu_rabbitmq_mq2_att" {
  target_group_arn = "${aws_lb_target_group.non_cde_pichu_rabbitmq_tg.arn}"
  target_id        = "${module.non_cde_mq2.id[0]}"
  port             = 5672
}

resource "aws_lb_target_group" "cde_pichu_rabbitmq_ui_tg_15672" {
  name        = "cde-rabbitmq-ui-tg-15672"
  port        = 15672
  protocol    = "TCP"
  vpc_id      = "${var.Internet_VPC_ID}"
  target_type = "ip"
  stickiness {
    type = "lb_cookie"
    enabled = false
  }
}
resource "aws_lb_target_group_attachment" "cde_pichu_rabbitmq_ui_15672_mq1_att" {
  target_group_arn = "${aws_lb_target_group.cde_pichu_rabbitmq_ui_tg_15672.arn}"
  target_id        = "${module.cde_mq1.private_ip[0]}"
  port             = 15672
  availability_zone = "all"
}

resource "aws_lb_target_group_attachment" "cde_pichu_rabbitmq_ui_15672_mq2_att" {
  target_group_arn = "${aws_lb_target_group.cde_pichu_rabbitmq_ui_tg_15672.arn}"
  target_id        = "${module.cde_mq2.private_ip[0]}"
  port             = 15672
  availability_zone = "all"
}

resource "aws_lb_target_group" "non_cde_pichu_rabbitmq_ui_tg_15672" {
  name        = "non-cde-rabbitmq-ui-tg-15672"
  port        = 15672
  protocol    = "TCP"
  vpc_id      = "${var.Internet_VPC_ID}"
  target_type = "ip"
  stickiness {
    type = "lb_cookie"
    enabled = false
  }
}
resource "aws_lb_target_group_attachment" "non_cde_pichu_rabbitmq_ui_15672_mq1_att" {
  target_group_arn = "${aws_lb_target_group.non_cde_pichu_rabbitmq_ui_tg_15672.arn}"
  target_id        = "${module.non_cde_mq1.private_ip[0]}"
  port             = 15672
  availability_zone = "all"
}

resource "aws_lb_target_group_attachment" "non_cde_pichu_rabbitmq_ui_15672_mq2_att" {
  target_group_arn = "${aws_lb_target_group.non_cde_pichu_rabbitmq_ui_tg_15672.arn}"
  target_id        = "${module.non_cde_mq2.private_ip[0]}"
  port             = 15672
  availability_zone = "all"
}

resource "aws_lb_target_group" "pichu_cde_php_tg_443" {
  name        = "pichu-cde-php-tg"
  port        = 443
  protocol    = "HTTPS"
  vpc_id      = "${var.Internet_VPC_ID}"
  target_type = "ip"


}
resource "aws_lb_target_group_attachment" "pichu_cde_php_att1" {
  target_group_arn = "${aws_lb_target_group.pichu_cde_php_tg_443.arn}"
  target_id        = "${aws_instance.cde_php_1.private_ip}"
  port             = 443
  availability_zone = "all"

}

#resource "aws_lb_target_group_attachment" "pichu_cde_php_att2" {
#  target_group_arn = "${aws_lb_target_group.pichu_cde_php_tg_443.arn}"
#  target_id        = "${aws_instance.cde_php_2.private_ip}"
#  port             = 443
#  availability_zone = "all"
#}

resource "aws_lb_target_group" "pichu_non_cde_php_tg_443" {
  name        = "pichu-non-cde-php-tg"
  port        = 443
  protocol    = "HTTPS"
  vpc_id      = "${var.Internet_VPC_ID}"
  target_type = "ip"
}
resource "aws_lb_target_group_attachment" "pichu_non_cde_php_att1" {
  target_group_arn = "${aws_lb_target_group.pichu_non_cde_php_tg_443.arn}"
  target_id        = "${aws_instance.cde_tokens_php_1.private_ip}"
  port             = 443
  availability_zone = "all"
}

#resource "aws_lb_target_group_attachment" "pichu_non_cde_php_att2" {
#  target_group_arn = "${aws_lb_target_group.pichu_non_cde_php_tg_443.arn}"
#  target_id        = "${aws_instance.cde_tokens_php_2.private_ip}"
#  port             = 443
#  availability_zone = "all"
#}
