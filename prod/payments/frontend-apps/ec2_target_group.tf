resource "aws_lb_target_group" "checkout_tg" {
  name        = "checkout-tg"
  port        = 443
  protocol    = "HTTPS"
  vpc_id      = "${var.Internet_VPC_ID}"
  target_type = "${var.target_type}"
  tags = {
    "env"     = "Prod"
    "service" = "Checkout"
    }
}

resource "aws_lb_target_group" "checkout_tg_9501" {
  name        = "checkout-tg-9501"
  port        = 9501
  protocol    = "HTTP"
  vpc_id      = "${var.Payments_VPC_ID}"
  target_type = "instance"
}

resource "aws_lb_target_group_attachment" "checkout_att" {
  target_group_arn = "${aws_lb_target_group.checkout_tg.arn}"
  target_id        = "${module.ct_01_checkout.private_ip[0]}"
  port             = 443
  availability_zone = "all" 
}

resource "aws_lb_target_group_attachment" "checkout_att_ct2" {
  target_group_arn = "${aws_lb_target_group.checkout_tg.arn}"
  target_id        = "${module.ct_02_checkout.private_ip[0]}"
  port             = 443
  availability_zone = "all" 
}

resource "aws_lb_target_group_attachment" "checkout_att_ct3" {
  target_group_arn = "${aws_lb_target_group.checkout_tg.arn}"
  target_id        = "${module.ct_03_checkout.private_ip[0]}"
  port             = 443
  availability_zone = "all" 
}

resource "aws_lb_target_group_attachment" "checkout_att_ct4" {
  target_group_arn = "${aws_lb_target_group.checkout_tg.arn}"
  target_id        = "${module.ct_04_checkout.private_ip[0]}"
  port             = 443
  availability_zone = "all" 
}

resource "aws_lb_target_group_attachment" "checkout_att_ct5" {
  target_group_arn = "${aws_lb_target_group.checkout_tg.arn}"
  target_id        = "${module.ct_05_checkout.private_ip[0]}"
  port             = 443
  availability_zone = "all" 
}

resource "aws_lb_target_group_attachment" "checkout_att_ct6" {
  target_group_arn = "${aws_lb_target_group.checkout_tg.arn}"
  target_id        = "${module.ct_06_checkout.private_ip[0]}"
  port             = 443
  availability_zone = "all" 
}

resource "aws_lb_target_group_attachment" "checkout_att_ct7" {
  target_group_arn = "${aws_lb_target_group.checkout_tg.arn}"
  target_id        = "${module.ct_07_checkout.private_ip[0]}"
  port             = 443
  availability_zone = "all" 
}

resource "aws_lb_target_group_attachment" "checkout_att_ct8" {
  target_group_arn = "${aws_lb_target_group.checkout_tg.arn}"
  target_id        = "${module.ct_08_checkout.private_ip[0]}"
  port             = 443
  availability_zone = "all" 
}
resource "aws_lb_target_group_attachment" "checkout_9501_att_ct1" {
  target_group_arn = "${aws_lb_target_group.checkout_tg_9501.arn}"
  target_id        = "${module.ct_01_checkout.id[0]}"
  port             = 9501
}

resource "aws_lb_target_group_attachment" "checkout_9501_att_ct2" {
  target_group_arn = "${aws_lb_target_group.checkout_tg_9501.arn}"
  target_id        = "${module.ct_02_checkout.id[0]}"
  port             = 9501
}

resource "aws_lb_target_group_attachment" "checkout_9501_att_ct3" {
  target_group_arn = "${aws_lb_target_group.checkout_tg_9501.arn}"
  target_id        = "${module.ct_03_checkout.id[0]}"
  port             = 9501
}

resource "aws_lb_target_group_attachment" "checkout_9501_att_ct4" {
  target_group_arn = "${aws_lb_target_group.checkout_tg_9501.arn}"
  target_id        = "${module.ct_04_checkout.id[0]}"
  port             = 9501
}

resource "aws_lb_target_group_attachment" "checkout_9501_att_ct5" {
  target_group_arn = "${aws_lb_target_group.checkout_tg_9501.arn}"
  target_id        = "${module.ct_05_checkout.id[0]}"
  port             = 9501
}

resource "aws_lb_target_group_attachment" "checkout_9501_att_ct6" {
  target_group_arn = "${aws_lb_target_group.checkout_tg_9501.arn}"
  target_id        = "${module.ct_06_checkout.id[0]}"
  port             = 9501
}

resource "aws_lb_target_group_attachment" "checkout_9501_att_ct7" {
  target_group_arn = "${aws_lb_target_group.checkout_tg_9501.arn}"
  target_id        = "${module.ct_07_checkout.id[0]}"
  port             = 9501
}

resource "aws_lb_target_group_attachment" "checkout_9501_att_ct8" {
  target_group_arn = "${aws_lb_target_group.checkout_tg_9501.arn}"
  target_id        = "${module.ct_08_checkout.id[0]}"
  port             = 9501
}
