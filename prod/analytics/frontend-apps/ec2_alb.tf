resource "aws_lb" "slam_web_lb" {
  name               = "slam-web-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${var.slam_web_remote_sg}"]
  subnets            = [var.ALB_Subnet_AZ1, var.ALB_Subnet_AZ2]
  tags               = "${merge(map("Name", "slam_web_lb"))}"
access_logs {
    bucket  = "cellulant-elb-logs"
    enabled = true 
    prefix  = "slam-web-lb"
}
}

resource "aws_lb" "slam_web_lb_internal" {
  name               = "slam-web-lb-internal"
  internal           = true
  load_balancer_type = "application"
  security_groups    = ["${var.dw_vpc_common_sg}"]
  subnets            = [var.dw_ELB_AZ1, var.dw_ELB_AZ2]
  tags               = "${merge(map("Name", "slam_web_lb_internal"))}"
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = "${aws_lb.slam_web_lb.arn}"
  port              = "80"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.slam_web_tg.arn}"
}
}

resource "aws_lb_listener" "http-9001" {
  load_balancer_arn = "${aws_lb.slam_web_lb.arn}"
  port              = "9001"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.slam_web_tg_9001.arn}"
}
}

resource "aws_lb_listener" "http-internal-9001" {
  load_balancer_arn = "${aws_lb.slam_web_lb_internal.arn}"
  port              = "9001"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9001.arn}"
}
}

resource "aws_lb_listener" "http-internal-9010" {
  load_balancer_arn = "${aws_lb.slam_web_lb_internal.arn}"
  port              = "9010"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9010.arn}"
}
}

resource "aws_lb_listener" "http-3000" {
  load_balancer_arn = "${aws_lb.slam_web_lb.arn}"
  port              = "3000"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.slam_web_tg_3000.arn}"
}
}

resource "aws_lb_listener" "http-internal-9005" {
  load_balancer_arn = "${aws_lb.slam_web_lb_internal.arn}"
  port              = "9005"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9005.arn}"

}

}
resource "aws_lb_listener" "http-internal-9002" {
  load_balancer_arn = "${aws_lb.slam_web_lb_internal.arn}"
  port              = "9002"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9002.arn}"
}
}

resource "aws_lb_listener" "http-internal-9007" {
  load_balancer_arn = "${aws_lb.slam_web_lb_internal.arn}"
  port              = "9007"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9007.arn}"

}

}
