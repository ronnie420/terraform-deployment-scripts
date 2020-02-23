resource "aws_lb" "weedle_lb" {
  name               = "weedle-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${var.weedle_remote_sg}"]
  subnets            = [var.ALB_Subnet_AZ1, var.ALB_Subnet_AZ2]
  tags               = "${merge(map("Name", "weedle_lb"))}"

access_logs {
    bucket  = "cellulant-elb-logs"
    enabled = true
}
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = "${aws_lb.weedle_lb.arn}"
  port              = "8088"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.weedle_tg.arn}"
}
}

resource "aws_lb_listener" "http-9301" {
  load_balancer_arn = "${aws_lb.weedle_lb.arn}"
  port              = "9301"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.weedle_tg_9301.arn}"
}

}
resource "aws_lb" "slam_rabbitmq_lb" {
  name               = "slam-rabbitmq-lb"
  internal           = true
  load_balancer_type = "network"
  subnets            = [var.dw_ELB_AZ1, var.dw_ELB_AZ2]
  tags               = "${merge(map("Name", "slam_rabbitmq_lb"))}"

}

resource "aws_lb_listener" "rabbit-5672" {
  load_balancer_arn = "${aws_lb.slam_rabbitmq_lb.arn}"
  port              = 5672
  protocol          = "TCP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.slam_rabbitmq_tg.arn}"

}
}

resource "aws_lb" "seel_lb" {
  name               = "seel-lb"
  internal           = true
  load_balancer_type = "network"
  subnets            = [var.dw_ELB_AZ1, var.dw_ELB_AZ2]
  tags               = "${merge(map("Name", "seel_lb"))}"
}

resource "aws_lb_listener" "seel-9090" {
  load_balancer_arn = "${aws_lb.seel_lb.arn}"
  port              = 9090
  protocol          = "TCP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.seel_tg_9090.arn}"
}
}

