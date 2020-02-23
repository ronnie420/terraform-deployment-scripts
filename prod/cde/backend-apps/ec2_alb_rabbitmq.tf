resource "aws_lb" "pichu_cde_rabbitmq_ui_lb" {
  name               = "pichu-cde-rabbitmq-ui-lb"
  internal           = false
  load_balancer_type = "network"
  subnets            = [var.ALB_Subnet_AZ1, var.ALB_Subnet_AZ2]
  tags               = "${merge(map("Name", "pichu_cde_rabbitmq_ui_lb"))}"

access_logs {
    bucket  = "cellulant-elb-logs"
    prefix  = "pichu-cde-rabbitmq-ui-lb"
    enabled = true

}

}


resource "aws_lb_listener" "cde-rabbitmq-ui-15672" {
  load_balancer_arn = "${aws_lb.pichu_cde_rabbitmq_ui_lb.arn}"
  port              = 15672
  protocol          = "TCP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.cde_pichu_rabbitmq_ui_tg_15672.arn}"
}
}

resource "aws_lb" "pichu_non_cde_rabbitmq_ui_lb" {
  name               = "pichu-non-cde-rabbitmq-ui-lb"
  internal           = false
  load_balancer_type = "network"
  subnets            = [var.ALB_Subnet_AZ1, var.ALB_Subnet_AZ2]
  tags               = "${merge(map("Name", "pichu_non_cde_rabbitmq_ui_lb"))}"

access_logs {
    bucket  = "cellulant-elb-logs"
    prefix  = "pichu-non-cde-rabbitmq-ui-lb"
    enabled = true
}
}

resource "aws_lb_listener" "non-cde-rabbit-mq-ui-15672" {
  load_balancer_arn = "${aws_lb.pichu_non_cde_rabbitmq_ui_lb.arn}"
  port              = 15672
  protocol          = "TCP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.non_cde_pichu_rabbitmq_ui_tg_15672.arn}"
}
}


resource "aws_lb" "non_cde_pichu_rabbitmq" {
  name               = "non-cde-pichu-rabbitmq"
  internal           = true
  load_balancer_type = "network"
  subnets            = [var.CDE_TOKENS_ELB_AZ1, var.CDE_TOKENS_ELB_AZ2]
  tags               = "${merge(map("Name", "non_cde_pichu_rabbitmq"))}"

}

resource "aws_lb_listener" "rabbit-5672" {
  load_balancer_arn = "${aws_lb.non_cde_pichu_rabbitmq.arn}"
  port              = 5672
  protocol          = "TCP"

default_action {
    type = "forward"
    target_group_arn = "${aws_lb_target_group.non_cde_pichu_rabbitmq_tg.arn}"
}

}

