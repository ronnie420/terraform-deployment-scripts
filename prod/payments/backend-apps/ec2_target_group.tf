resource "aws_lb_target_group" "payments_gh_rabbitmq_tg" {
  name        = "payments-gh-rabbitmq-tg"
  port        = 5672
  protocol    = "TCP"
  vpc_id      = "${var.payments_vpc_id}"
  target_type = "instance"
  stickiness {
    type = "lb_cookie"
    enabled = false
  }
}
resource "aws_lb_target_group_attachment" "payments_gh_rabbitmq_mq1_att_mq1" {
  target_group_arn = "${aws_lb_target_group.payments_gh_rabbitmq_tg.arn}"
  target_id        = "${module.payments_gh_mq1.id[0]}"
  port             = 5672
}

resource "aws_lb_target_group_attachment" "payments_gh_rabbitmq_mq1_att_mq2" {
  target_group_arn = "${aws_lb_target_group.payments_gh_rabbitmq_tg.arn}"
  target_id        = "${module.payments_gh_mq2.id[0]}"
  port             = 5672
}
