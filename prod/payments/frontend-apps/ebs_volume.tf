resource "aws_ebs_volume" "checkout_logs" {
  availability_zone = "eu-west-1a"
  size              = 100
}

resource "aws_ebs_volume" "checkout_srv" {
  availability_zone = "eu-west-1a"
  size              = 50
}

resource "aws_ebs_volume" "checkout_apps" {
  availability_zone = "eu-west-1a"
  size              = 50
}

