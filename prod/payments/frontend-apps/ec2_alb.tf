resource "aws_lb" "checkout_lb" {
  name               = "checkout-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${var.checkout_remote_sg}"]
  subnets            = [var.ALB_Subnet_AZ1, var.ALB_Subnet_AZ2]
  tags               = "${merge(map("Name", "checkout_lb"))}"

access_logs {
    bucket  = "cellulant-elb-logs"
    prefix  = "checkout-lb"
    enabled = true
}
}

resource "aws_lb" "checkout_lb_internal" {
  name               = "checkout-lb-internal"
  internal           = true
  load_balancer_type = "application"
  security_groups    = ["${var.payments_common_sg}"]
  subnets            = [var.Payments_Backends_Apps_AZ1, var.Payments_Backends_Apps_AZ2]
  tags               = "${merge(map("Name", "checkout_lb_internal"))}"

access_logs {
    bucket  = "cellulant-elb-logs"
    enabled = true
    prefix  = "checkout-lb-internal"
}
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = "${aws_lb.checkout_lb.arn}"
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:eu-west-1:102430194655:certificate/efb56026-a0df-49dc-85d9-daaa2cf22ccc"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.checkout_tg.arn}"
}

}

resource "aws_lb_listener" "http_9501" {
  load_balancer_arn = "${aws_lb.checkout_lb_internal.arn}"
  port              = "9501"
  protocol          = "HTTP"
  #ssl_policy        = "ELBSecurityPolicy-2016-08"
  #certificate_arn   = "arn:aws:acm:eu-west-1:102430194655:certificate/efb56026-a0df-49dc-85d9-daaa2cf22ccc"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.checkout_tg_9501.arn}"
}
}
