resource "aws_lb" "wallet_demo_lb" {
  name               = "wallet-demo-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${var.staging_common_sg}"]
  subnets            = [var.ALB_Subnet_AZ1, var.ALB_Subnet_AZ2]
  tags               = "${merge(map("Name", "wallet_demo_lb"))}"

#access_logs {
#    bucket  = "cellulant-elb-logs"
#    enabled = true
#    prefix = "wallet_demo_lb"
#}
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = "${aws_lb.wallet_demo_lb.arn}"
  port              = "9000"
  protocol          = "HTTP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.wallet_demo_tg.arn}"
}
}
