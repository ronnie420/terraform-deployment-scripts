resource "aws_lb" "dtap_01_web_lb" {
  name               = "dtap-01-web-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${var.dtap_01_web_remote_sg}"]
  subnets            = [data.terraform_remote_state.vpc.outputs.DTAP_01_ELB_AZ1, data.terraform_remote_state.vpc.outputs.DTAP_01_ELB_AZ2]
  tags               = "${merge(map("Name", "dtap_01_web_lb"))}"
#access_logs {
#    bucket  = "cellulant-elb-logs"
#    enabled = true 
#    prefix  = "dtap-01-web-lb"
#}
}

resource "aws_lb_listener" "http-8500" {
  load_balancer_arn = "${aws_lb.dtap_01_web_lb.arn}"
  port              = "8500"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.dtap_01_web_tg_8500.arn}"
}
}
resource "aws_lb_listener" "http-8081" {
  load_balancer_arn = "${aws_lb.dtap_01_web_lb.arn}"
  port              = "8081"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.dtap_01_web_tg_8081.arn}"
}
}
resource "aws_lb_listener" "http-80" {
  load_balancer_arn = "${aws_lb.dtap_01_web_lb.arn}"
  port              = "80"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.dtap_01_web_tg_80.arn}"
}
}
resource "aws_lb_listener" "http-443" {
  load_balancer_arn = "${aws_lb.dtap_01_web_lb.arn}"
  port              = "443"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.dtap_01_web_tg_443.arn}"
}
}
