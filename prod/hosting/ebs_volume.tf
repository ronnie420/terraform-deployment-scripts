resource "aws_ebs_volume" "cpanel_home" {
  availability_zone = "eu-west-1a"
  size              = 200
}

resource "aws_ebs_volume" "cpanel_logs" {
  availability_zone = "eu-west-1a"
  size              = 100
}

resource "aws_ebs_volume" "cpanel_swap" {
  availability_zone = "eu-west-1a"
  size              = 15
}

resource "aws_ebs_volume" "cpanel_backups" {
  availability_zone = "eu-west-1a"
  size              = 100
  type       = "standard"
}
