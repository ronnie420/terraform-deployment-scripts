resource "aws_lb" "payments_gh_rabbitmq" {
  name               = "payments-gh-rabbitmq"
  internal           = true
  load_balancer_type = "network"
  subnets            = [var.Payments_ELB_AZ1, var.Payments_ELB_AZ2]
  tags               = "${merge(map("Name", "payments_gh_rabbitmq_lb"))}"

}

resource "aws_lb_listener" "rabbit-5672" {
  load_balancer_arn = "${aws_lb.payments_gh_rabbitmq.arn}"
  port              = 5672
  protocol          = "TCP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.payments_gh_rabbitmq_tg.arn}"
}

}
