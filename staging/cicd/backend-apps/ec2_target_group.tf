resource "aws_lb_target_group" "dtap_01_web_tg_8500" {
  name        = "dtap-01-web-tg-8500"
  port        = 8500
  protocol    = "HTTP"
  vpc_id      = "${data.terraform_remote_state.vpc.outputs.DTAP_01_VPC_ID}"
  target_type = "instance"
}
resource "aws_lb_target_group_attachment" "dtap_01_web_tg_8500_att_01" {
  target_group_arn = "${aws_lb_target_group.dtap_01_web_tg_8500.arn}"
  target_id        = "${module.dtap_consul_01.id[0]}"
  port             = 8500
}

resource "aws_lb_target_group" "dtap_01_web_tg_8081" {
  name        = "dtap-01-web-tg-8081"
  port        = 8081
  protocol    = "HTTP"
  vpc_id      = "${data.terraform_remote_state.vpc.outputs.DTAP_01_VPC_ID}"
  target_type = "instance"
}
resource "aws_lb_target_group_attachment" "dtap_01_web_tg_8081_att_01" {
  target_group_arn = "${aws_lb_target_group.dtap_01_web_tg_8081.arn}"
  target_id        = "${module.dtap_nexus_01.id[0]}"
  port             = 8081
}

resource "aws_lb_target_group" "dtap_01_web_tg_80" {
  name        = "dtap-01-web-tg-80"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "${data.terraform_remote_state.vpc.outputs.DTAP_01_VPC_ID}"
  target_type = "instance"

}
resource "aws_lb_target_group_attachment" "dtap_01_web_tg_80_att_01" {
  target_group_arn = "${aws_lb_target_group.dtap_01_web_tg_80.arn}"
  target_id        = "${module.dtap_rancher_01.id[0]}"
  port             = 80

}
resource "aws_lb_target_group" "dtap_01_web_tg_443" {
  name        = "dtap-01-web-tg-443"
  port        = 443
  protocol    = "HTTPS"
  vpc_id      = "${data.terraform_remote_state.vpc.outputs.DTAP_01_VPC_ID}"
  target_type = "instance"

}
resource "aws_lb_target_group_attachment" "dtap_01_web_tg_443_att_01" {
  target_group_arn = "${aws_lb_target_group.dtap_01_web_tg_443.arn}"
  target_id        = "${module.dtap_rancher_01.id[0]}"
  port             = 443

}
