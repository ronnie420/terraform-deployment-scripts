module "payments_sd_mq1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_sd_mq1"
  instance_count         = 1
  disable_api_termination      = true
  ami                    = "ami-00be99b20235ed00c"
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg,var.payments_ma_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "payments_sd_mq1" 
 Cellulant = "cellulant-servers" 
}
}

module "payments_sd_cac" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_sd_cac"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = "ami-0a4936ad2c9ae0721"
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_common_sg,var.payments_ca_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "payments_sd_cac" 
 Cellulant = "cellulant-servers" 
}
}

module "payments_sd_ca_jdc" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_sd_ca_jdc"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = true
  ami                    = "ami-072205f23b355151f"
  instance_type          = "c5.4xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_ca_jd_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "payments_sd_ca_jdc" 
 Cellulant = "cellulant-servers" 
}
}

module "payments_sd_mac" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_sd_mac"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = "ami-0911dd4cbad661c34"
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_common_sg,var.payments_ma_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "payments_sd_mac" 
 Cellulant = "cellulant-servers" 
}
}

module "payments_sd_ma_jdc" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_sd_ma_jdc"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = true
  ami                    = "ami-0fe6a2ace5feb02ee"
  instance_type          = "c5.2xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_ca_jd_sg]
  subnet_id              = var.Payments_JD_Redis_MQ_AZ1

tags = {
 Name = "payments_sd_ma_jdc" 
 Cellulant = "cellulant-servers" 
}
}
