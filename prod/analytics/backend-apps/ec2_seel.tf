module "vault_01_seel" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ireland_image_id
  name                   = "vault-01-seel"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.dw_vpc_common_sg,var.seel_common_sg]
  subnet_id              = var.dw_Backends_Apps_AZ1

tags = {
 Name = "vault_01_seel"
 Cellulant = "cellulant-servers"
}
}

module "vault_02_seel" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ireland_image_id
  name                   = "vault-02-seel"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.dw_vpc_common_sg,var.seel_common_sg]
  subnet_id              = var.dw_Backends_Apps_AZ1

tags = {
 Name = "vault_02_seel"
 Cellulant = "cellulant-servers"
}
}

module "vault_03_seel" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ireland_image_id
  name                   = "vault-03-seel"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.dw_vpc_common_sg,var.seel_common_sg]
  subnet_id              = var.dw_Backends_Apps_AZ2

tags = {
 Name = "vault_03_seel"
 Cellulant = "cellulant-servers"
}
}

resource "aws_volume_attachment" "vault_01_seel_datadisk_att" {
  device_name = "/dev/sdb"
  volume_id   = "${aws_ebs_volume.vault_01_datadisk.id}"
  instance_id = "${module.vault_01_seel.id[0]}"
}

resource "aws_volume_attachment" "vault_02_seel_datadisk_att" {
  device_name = "/dev/sdb"
  volume_id   = "${aws_ebs_volume.vault_02_datadisk.id}"
  instance_id = "${module.vault_02_seel.id[0]}"
}

resource "aws_volume_attachment" "vault_03_seel_datadisk_att" {
  device_name = "/dev/sdb"
  volume_id   = "${aws_ebs_volume.vault_03_datadisk.id}"
  instance_id = "${module.vault_03_seel.id[0]}"
}
