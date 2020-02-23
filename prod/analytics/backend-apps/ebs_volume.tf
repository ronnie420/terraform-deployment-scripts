resource "aws_ebs_volume" "vault_01_datadisk" {
  availability_zone = "eu-west-1a"
  size              = 500
}

resource "aws_ebs_volume" "vault_02_datadisk" {
  availability_zone = "eu-west-1a"
  size              = 500
}

resource "aws_ebs_volume" "vault_03_datadisk" {
  availability_zone = "eu-west-1b"
  size              = 500
}
