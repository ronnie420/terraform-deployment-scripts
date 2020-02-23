resource "aws_lb_target_group" "weedle_tg" {
  name        = "weedle-tg"
  port        = 8088
  protocol    = "HTTP"
  vpc_id      = "${var.Internet_VPC_ID}"
  target_type = "ip"
}
resource "aws_lb_target_group_attachment" "weedle_att" {
  target_group_arn = "${aws_lb_target_group.weedle_tg.arn}"
  target_id        = "${module.data_analytics_1_weedle.private_ip[0]}"
  port             = 8088
  availability_zone = "all" 

}

resource "aws_lb_target_group" "weedle_tg_9301" {
  name        = "weedle-tg-9301"
  port        = 9301
  protocol    = "HTTP"
  vpc_id      = "${var.Internet_VPC_ID}"
  target_type = "ip"
}
resource "aws_lb_target_group_attachment" "weedle_att_9301" {
  target_group_arn = "${aws_lb_target_group.weedle_tg_9301.arn}"
  target_id        = "${module.data_analytics_1_weedle.private_ip[0]}"
  port             = 9301
  availability_zone = "all" 

}

resource "aws_lb_target_group" "slam_rabbitmq_tg" {
  name        = "slam-rabbitmq-tg"
  port        = 5672
  protocol    = "TCP"
  vpc_id      = "${var.dw_VPC_ID}"
  target_type = "instance"
}
resource "aws_lb_target_group_attachment" "slam_rabbitmq_att_mq1" {
  target_group_arn = "${aws_lb_target_group.slam_rabbitmq_tg.arn}"
  target_id        = "${module.mq_01_slam.id[0]}"
  port             = 5672
}

resource "aws_lb_target_group_attachment" "slam_rabbitmq_att_mq2" {
  target_group_arn = "${aws_lb_target_group.slam_rabbitmq_tg.arn}"
  target_id        = "${module.mq_02_slam.id[0]}"
  port             = 5672
}

resource "aws_lb_target_group" "slam_redis_tg" {
  name        = "slam-redis-tg"
  port        = 6379
  protocol    = "TCP"
  vpc_id      = "${var.dw_VPC_ID}"
  target_type = "instance"

}
resource "aws_lb_target_group_attachment" "slam_redis_att_mq1" {
  target_group_arn = "${aws_lb_target_group.slam_redis_tg.arn}"
  target_id        = "${module.mq_01_slam.id[0]}"
  port             = 6379
}

resource "aws_lb_target_group_attachment" "slam_redis_att_mq2" {
  target_group_arn = "${aws_lb_target_group.slam_redis_tg.arn}"
  target_id        = "${module.mq_02_slam.id[0]}"
  port             = 6379
}

resource "aws_lb_target_group" "seel_tg_9090" {
  name        = "seel-tg-9090"
  port        = 9090
  protocol    = "TCP"
  vpc_id      = "${var.dw_VPC_ID}"
  target_type = "instance"
}

resource "aws_lb_target_group_attachment" "seel_tg_9090_att_vault_01" {
  target_group_arn = "${aws_lb_target_group.seel_tg_9090.arn}"
  target_id        = "${module.vault_01_seel.id[0]}"
  port             = 9090
}

resource "aws_lb_target_group_attachment" "seel_tg_9090_att_vault_02" {
  target_group_arn = "${aws_lb_target_group.seel_tg_9090.arn}"
  target_id        = "${module.vault_02_seel.id[0]}"
  port             = 9090
}

resource "aws_lb_target_group_attachment" "seel_tg_9090_att_vault_03" {
  target_group_arn = "${aws_lb_target_group.seel_tg_9090.arn}"
  target_id        = "${module.vault_03_seel.id[0]}"
  port             = 9090
}
