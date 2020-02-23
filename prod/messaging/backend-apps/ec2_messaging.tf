module "messaging_sd_mq1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = "ami-00be99b20235ed00c"
  name                   = "messaging_sd_mq1"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.messaging_common_sg, var.messaging_mq_sg]
  subnet_id              = var.messaging_Backends_Apps_AZ1

tags = {
 Name = "messaging_sd_mq1"
 Cellulant = "cellulant-servers"

}

}

module "messaging_sd_mq2" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = "ami-00be99b20235ed00c"
  name                   = "messaging_sd_mq2"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.messaging_common_sg, var.messaging_mq_sg]
  subnet_id              = var.messaging_Backends_Apps_AZ2

tags = {
 Name = "messaging_sd_mq2"
 Cellulant = "cellulant-servers"

}

}

module "messaging_sd_va1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = "ami-06cfc7309b394998a"
  name                   = "messaging_sd_va1"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = true
  instance_type          = "c5.xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.messaging_common_sg, var.messaging_va_sg]
  subnet_id              = var.messaging_Backends_Apps_AZ1

tags = {
 Name = "messaging_sd_va1"
 Cellulant = "cellulant-servers"

}

}

module "messaging_sd_va2" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = "ami-06cfc7309b394998a"
  name                   = "messaging_sd_va2"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = true
  instance_type          = "c5.xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.messaging_common_sg, var.messaging_va_sg]
  subnet_id              = var.messaging_Backends_Apps_AZ2

tags = {
 Name = "messaging_sd_va2"
 Cellulant = "cellulant-servers"

}
}

module "messaging_sd_emg1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = "ami-00be99b20235ed00c"
  name                   = "messaging_sd_emg1"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.messaging_common_sg, var.messaging_mq_sg]
  subnet_id              = var.messaging_Backends_Apps_AZ1

tags = {
 Name = "messaging_sd_emg1"
 Cellulant = "cellulant-servers"

}
}
