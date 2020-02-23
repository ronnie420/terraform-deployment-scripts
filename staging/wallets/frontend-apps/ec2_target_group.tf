resource "aws_lb_target_group" "wallet_demo_tg" {
  name        = "wallet-demo-tg"
  port        = 9000
  protocol    = "HTTP"
  vpc_id      = "${var.vpc_id}"
  target_type = "instance"
}
resource "aws_lb_target_group_attachment" "wallet_demo_att" {
  target_group_arn = "${aws_lb_target_group.wallet_demo_tg.arn}"
  target_id        = "${module.wallet_demo_01.id[0]}"
  port             = 9000
}
