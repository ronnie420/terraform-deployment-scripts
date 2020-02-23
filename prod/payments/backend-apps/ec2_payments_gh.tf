resource "aws_ami_from_instance" "payments_sd_cac_clone" {
  name               = "payments_sd_cac_clone_20191112"
  source_instance_id = "i-043dec12552c0a948"
  snapshot_without_reboot = true
 tags = {
    Name = "payments_sd_cac_clone_20191112"
 }

}

resource "aws_ami_from_instance" "payments_sd_mac_clone" {
  name               = "payments_sd_mac_clone_20191112"
  source_instance_id = "i-088ff2abbd563d2d7"
  snapshot_without_reboot = true
 tags = {
    Name = "payments_sd_mac_clone_20191112"
 }
}


resource "aws_ami_from_instance" "payments_sd_ca_jdc_clone" {
  name               = "payments_sd_ca_jdc_clone_20191112"
  source_instance_id = "i-0609c959e005621f5"
  snapshot_without_reboot = true
 tags = {
    Name = "payments_sd_ca_jdc_clone_20191112"
 }
}

resource "aws_ami_from_instance" "payments_sd_ma_jdc_clone" {
  name               = "payments_sd_ma_jdc_clone_20191112"
  source_instance_id = "i-0b5d6802033f6a8dd"
  snapshot_without_reboot = true
 tags = {
    Name = "payments_sd_ma_jdc_clone_20191112"
 }
}

module "payments_gh_mq1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_gh_mq1"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = var.ireland_image_id
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,var.payments_ma_sg]
  subnet_id              = var.Payments_JD_Redis_MQ_AZ1

tags = {
 Name = "payments_gh_mq1" 
 Cellulant = "cellulant-servers" 
}
}

module "payments_gh_mq2" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_gh_mq2"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = var.ireland_image_id
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,var.payments_ma_sg]
  subnet_id              = var.Payments_JD_Redis_MQ_AZ2

tags = {
 Name = "payments_gh_mq2" 
 Cellulant = "cellulant-servers" 
}
}

module "payments_gh_ca1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_gh_ca1"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = aws_ami_from_instance.payments_sd_cac_clone.id
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_common_sg,var.payments_ca_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "payments_gh_ca1" 
 Cellulant = "cellulant-servers" 
}
}


module "payments_gh_ma1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_gh_ma1"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = aws_ami_from_instance.payments_sd_mac_clone.id
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_common_sg,var.payments_ma_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "payments_gh_ma1" 
 Cellulant = "cellulant-servers" 
}
}

module "payments_gh_ma_jd1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_gh_ma_jd1"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = true
  ami                    = aws_ami_from_instance.payments_sd_ma_jdc_clone.id
  instance_type          = "c5.2xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_ca_jd_sg]
  subnet_id              = var.Payments_JD_Redis_MQ_AZ1

tags = {
 Name = "payments_gh_ma_jd1" 
 Cellulant = "cellulant-servers" 
}
}

module "payments_gh_ca_jd1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_gh_ca_jd1"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = true
  ami                    = aws_ami_from_instance.payments_sd_ca_jdc_clone.id
  instance_type          = "c5.4xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_ca_jd_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "payments_gh_ca_jd1" 
 Cellulant = "cellulant-servers" 
}
}
