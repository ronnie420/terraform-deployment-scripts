resource "aws_lb_target_group" "slam_web_tg" {
  name        = "slam-web-tg-80"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "${var.Internet_VPC_ID}"
  target_type = "ip"
}
resource "aws_lb_target_group_attachment" "slam_web_att_01" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg.arn}"
  target_id        = "${module.web_01_slam.private_ip[0]}"
  port             = 80
  availability_zone = "all" 
}

resource "aws_lb_target_group_attachment" "slam_web_att_02" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg.arn}"
  target_id        = "${module.web_02_slam.private_ip[0]}"
  port             = 80
  availability_zone = "all" 
}

resource "aws_lb_target_group" "slam_web_tg_9001" {
  name        = "slam-web-tg-9001"
  port        = 9001
  protocol    = "HTTP"
  vpc_id      = "${var.Internet_VPC_ID}"
  target_type = "ip"
}
resource "aws_lb_target_group_attachment" "slam_web_9001_att_01" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_9001.arn}"
  target_id        = "${module.web_01_slam.private_ip[0]}"
  port             = 9001
  availability_zone = "all" 
}

resource "aws_lb_target_group_attachment" "slam_web_9001_att_02" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_9001.arn}"
  target_id        = "${module.web_02_slam.private_ip[0]}"
  port             = 9001
  availability_zone = "all" 
}

resource "aws_lb_target_group" "slam_web_tg_3000" {
  name        = "slam-web-tg-3000"
  port        = 3000
  protocol    = "HTTP"
  vpc_id      = "${var.Internet_VPC_ID}"
  target_type = "ip"
}
resource "aws_lb_target_group_attachment" "slam_web_3000_att" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_3000.arn}"
  target_id        = "10.103.11.47"
  port             = 3000
  availability_zone = "all" 
}
resource "aws_lb_target_group" "slam_web_tg_internal_9001" {
  name        = "slam-web-tg-internal-9001"
  port        = 9001
  protocol    = "HTTP"
  vpc_id      = "${var.dw_VPC_ID}"
  target_type = "instance"
}
resource "aws_lb_target_group_attachment" "slam_web_internal_9001_att_01" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9001.arn}"
  target_id        = "${module.web_01_slam.id[0]}"
  port             = 9001
}

resource "aws_lb_target_group_attachment" "slam_web_internal_9001_att_02" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9001.arn}"
  target_id        = "${module.web_02_slam.id[0]}"
  port             = 9001
}

resource "aws_lb_target_group" "slam_web_tg_internal_9010" {
  name        = "slam-web-tg-internal-9010"
  port        = 9010
  protocol    = "HTTP"
  vpc_id      = "${var.dw_VPC_ID}"
  target_type = "instance"
}
resource "aws_lb_target_group_attachment" "slam_web_internal_9010_att_01" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9010.arn}"
  target_id        = "${module.web_01_slam.id[0]}"
  port             = 9010
}

resource "aws_lb_target_group_attachment" "slam_web_internal_9010_att_02" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9010.arn}"
  target_id        = "${module.web_02_slam.id[0]}"
  port             = 9010
}
resource "aws_lb_target_group" "slam_web_tg_internal_9005" {
  name        = "slam-web-tg-internal-9005"
  port        = 9005
  protocol    = "HTTP"
  vpc_id      = "${var.dw_VPC_ID}"
  target_type = "instance"

}
resource "aws_lb_target_group_attachment" "slam_web_internal_9005_att_01" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9005.arn}"
  target_id        = "${module.web_01_slam.id[0]}"
  port             = 9005

}

resource "aws_lb_target_group_attachment" "slam_web_internal_9005_att_02" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9005.arn}"
  target_id        = "${module.web_02_slam.id[0]}"
  port             = 9005

}
resource "aws_lb_target_group" "slam_web_tg_internal_9002" {
  name        = "slam-web-tg-internal-9002"
  port        = 9002
  protocol    = "HTTP"
  vpc_id      = "${var.dw_VPC_ID}"
  target_type = "instance"

}
resource "aws_lb_target_group_attachment" "slam_web_internal_9002_att_01" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9002.arn}"
  target_id        = "${module.web_01_slam.id[0]}"
  port             = 9002

}

resource "aws_lb_target_group_attachment" "slam_web_internal_9002_att_02" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9002.arn}"
  target_id        = "${module.web_02_slam.id[0]}"
  port             = 9002

}
resource "aws_lb_target_group" "slam_web_tg_internal_9007" {
  name        = "slam-web-tg-internal-9007"
  port        = 9007
  protocol    = "HTTP"
  vpc_id      = "${var.dw_VPC_ID}"
  target_type = "instance"

}
resource "aws_lb_target_group_attachment" "slam_web_internal_9007_att_01" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9007.arn}"
  target_id        = "${module.web_01_slam.id[0]}"
  port             = 9007

}

resource "aws_lb_target_group_attachment" "slam_web_internal_9007_att_02" {
  target_group_arn = "${aws_lb_target_group.slam_web_tg_internal_9007.arn}"
  target_id        = "${module.web_02_slam.id[0]}"
  port             = 9007

}
