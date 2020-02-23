module "ct_01_checkout" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "checkout_ct_01"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = var.image_id_updated
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,]
  subnet_id              = var.Payments_Web_Tools_AZ1

tags = {
 Name = "checkout_ct_01" 
 Cellulant = "cellulant-servers" 
}

}

resource "aws_volume_attachment" "checkout_att_logs" {
  device_name = "/dev/sdb"
  volume_id   = "${aws_ebs_volume.checkout_logs.id}"
  instance_id = module.ct_01_checkout.id[0]
}

resource "aws_volume_attachment" "checkout_att_srv" {
  device_name = "/dev/sdc"
  volume_id   = "${aws_ebs_volume.checkout_srv.id}"
  instance_id = module.ct_01_checkout.id[0]
}

resource "aws_volume_attachment" "checkout_att_apps" {
  device_name = "/dev/sdd"
  volume_id   = "${aws_ebs_volume.checkout_apps.id}"
  instance_id = module.ct_01_checkout.id[0]
}

resource "aws_ami_from_instance" "checkout_clone" {
  name               = "checkout_ct_01_clone_20191101"
  source_instance_id = "${module.ct_01_checkout.id[0]}"
  snapshot_without_reboot = false
tags = {
    Name = "checkout_ct_01_clone_20191101"
}
}

resource "aws_ami_from_instance" "checkout_clone_2" {
  name               = "checkout_ct_01_clone_20191104"
  source_instance_id = "${module.ct_01_checkout.id[0]}"
  snapshot_without_reboot = true
tags = {
    Name = "checkout_ct_01_clone_20191104"
}
}

resource "aws_ami_from_instance" "checkout_clone_3" {
  name               = "checkout_ct_01_clone_20191105"
  source_instance_id = "${module.ct_01_checkout.id[0]}"
  snapshot_without_reboot = true
tags = {
    Name = "checkout_ct_01_clone_20191105"
}
}

module "jd_01_checkout" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "checkout_jd_01"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = aws_ami_from_instance.checkout_clone.id
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "checkout_jd_01" 
 Cellulant = "cellulant-servers" 
}

}

module "ct_02_checkout" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "checkout_ct_02"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = aws_ami_from_instance.checkout_clone_2.id
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,]
  subnet_id              = var.Payments_Web_Tools_AZ1

tags = {
 Name = "checkout_ct_02" 
 Cellulant = "cellulant-servers" 
}
}

module "ct_03_checkout" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "checkout_ct_03"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = aws_ami_from_instance.checkout_clone_3.id
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,]
  subnet_id              = var.Payments_Web_Tools_AZ1

tags = {
 Name = "checkout_ct_03" 
 Cellulant = "cellulant-servers" 
}
}

module "ct_04_checkout" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "checkout_ct_04"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = aws_ami_from_instance.checkout_clone_3.id
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,]
  subnet_id              = var.Payments_Web_Tools_AZ1

tags = {
 Name = "checkout_ct_04" 
 Cellulant = "cellulant-servers" 
}
}

module "ct_05_checkout" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "checkout_ct_05"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = aws_ami_from_instance.checkout_clone_3.id
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,]
  subnet_id              = var.Payments_Web_Tools_AZ2

tags = {
 Name = "checkout_ct_05" 
 Cellulant = "cellulant-servers" 
}
}

module "ct_06_checkout" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "checkout_ct_06"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = aws_ami_from_instance.checkout_clone_3.id
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,]
  subnet_id              = var.Payments_Web_Tools_AZ2

tags = {
 Name = "checkout_ct_06" 
 Cellulant = "cellulant-servers" 
}
}

module "ct_07_checkout" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "checkout_ct_07"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = aws_ami_from_instance.checkout_clone_3.id
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,]
  subnet_id              = var.Payments_Web_Tools_AZ2

tags = {
 Name = "checkout_ct_07" 
 Cellulant = "cellulant-servers" 
}
}

module "ct_08_checkout" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "checkout_ct_08"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = aws_ami_from_instance.checkout_clone_3.id
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,]
  subnet_id              = var.Payments_Web_Tools_AZ2

tags = {
 Name = "checkout_ct_08" 
 Cellulant = "cellulant-servers" 
}
}
