module "alb" {
  source  = "../../../modules/terraform-aws-alb/"
  load_balancer_name            = "kakuna-alb"
  load_balancer_is_internal     = true
  security_groups               = [var.kakuna_sg,]
  log_bucket_name               = "cellulant-elb-logs"
  log_location_prefix           = "kakuna-alb-logs"
  subnets                       = [data.terraform_remote_state.vpc.outputs.CDE_ELB_AZ1, data.terraform_remote_state.vpc.outputs.CDE_ELB_AZ2]
  tags                          = "${map("Environment", "production")}"
  vpc_id                        = data.terraform_remote_state.vpc.outputs.CDE_VPC_ID
  https_listeners               = "${list(map("certificate_arn", "arn:aws:acm:eu-west-1:102430194655:certificate/7949706f-8d36-453c-b28f-415759b8f1b1", "port", 9443))}"
  https_listeners_count         = "1"
  target_groups                 = "${list(map("name", "kakuna-tg", "backend_protocol", "HTTPS", "backend_port", "9443"))}"
  target_groups_count           = "1"

}


resource "aws_lb" "pichu_cde_php_lb" {
  name               = "pichu-cde-php-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${var.cde_remote_sg}"]
  subnets            = [var.ALB_Subnet_AZ1, var.ALB_Subnet_AZ2]
  tags               = "${merge(map("Name", "pichu_cde_php_lb"))}"

access_logs {
    bucket  = "cellulant-elb-logs"
    prefix  = "pichu-cde-php-lb"
    enabled = true

}

}
resource "aws_lb_listener" "pichu-cde-php-443" {
  load_balancer_arn = "${aws_lb.pichu_cde_php_lb.arn}"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:eu-west-1:102430194655:certificate/385182cc-da37-445b-8a39-5e92d7532258"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.pichu_cde_php_tg_443.arn}"

}

}

resource "aws_lb" "pichu_non_cde_php_lb" {
  name               = "pichu-non-cde-php-lb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [var.ALB_Subnet_AZ1, var.ALB_Subnet_AZ2]
  tags               = "${merge(map("Name", "pichu_non_cde_php_lb"))}"
  security_groups    = ["${var.non_cde_remote_sg}"]

access_logs {
    bucket  = "cellulant-elb-logs"
    prefix  = "pichu-non-cde-php-lb"
    enabled = true

}

}

resource "aws_lb_listener" "pichu-non-cde-php-443" {
  load_balancer_arn = "${aws_lb.pichu_non_cde_php_lb.arn}"
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:eu-west-1:102430194655:certificate/20ff1064-6a27-407d-ad6f-ad9d64f8bf5e"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.pichu_non_cde_php_tg_443.arn}"

}

}
