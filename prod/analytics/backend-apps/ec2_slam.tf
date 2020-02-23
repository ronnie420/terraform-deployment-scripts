module "mq_01_slam" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ireland_image_id
  name                   = "mq_01_slam"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.dw_vpc_common_sg,var.slam_mq_sg]
  subnet_id              = var.dw_JD_Redis_MQ_AZ1

tags = {
 Name = "mq_01_slam"
 Cellulant = "cellulant-servers"
}
}

module "mq_02_slam" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ireland_image_id
  name                   = "mq_02_slam"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.dw_vpc_common_sg,var.slam_mq_sg]
  subnet_id              = var.dw_JD_Redis_MQ_AZ2

tags = {
 Name = "mq_02_slam"
 Cellulant = "cellulant-servers"
}
}

module "java_01_slam" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ireland_image_id
  name                   = "java_01_slam"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = false
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.dw_vpc_common_sg,]
  subnet_id              = var.dw_Backends_Apps_AZ1

tags = {
 Name = "java_01_slam"
 Cellulant = "cellulant-servers"
}
}

module "java_02_slam" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ireland_image_id
  name                   = "java_02_slam"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = false
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.dw_vpc_common_sg,]
  subnet_id              = var.dw_Backends_Apps_AZ2

tags = {
 Name = "java_02_slam"
 Cellulant = "cellulant-servers"
}
}

module "java_03_slam" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ireland_image_id
  name                   = "java_03_slam"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = false
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.dw_vpc_common_sg,]
  subnet_id              = var.dw_Backends_Apps_AZ1

tags = {
 Name = "java_03_slam"
 Cellulant = "cellulant-servers"
}
}

