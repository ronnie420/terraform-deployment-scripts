module "payments_ca1_snowball" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.image_id
  name                   = "payments_ca1_snowball"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg, var.payments_ca_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ2

tags = {
 Name = "payments_ca1_snowball"
 Cellulant = "cellulant-servers"
}
}

module "payments_ca2_snowball" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.image_id
  name                   = "payments_ca2_snowball"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg, var.payments_ca_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ2

tags = {
 Name = "payments_ca2_snowball"
 Cellulant = "cellulant-servers"
}
}

module "payments_ma1_snowball" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.image_id
  name                   = "payments_ma1_snowball"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg, var.payments_ma_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "payments_ma1_snowball"
 Cellulant = "cellulant-servers"
}
}

module "payments_ma2_snowball" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.image_id
  name                   = "payments_ma2_snowball"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [var.payments_common_sg, var.payments_ma_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "payments_ma2_snowball"
 Cellulant = "cellulant-servers"
}
}

module "payments_ma1_jd_snowball" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.image_id
  name                   = "payments_ma1_jd_snowball"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "c5.2xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_common_sg, var.payments_ma_jd_sg]
  subnet_id              = var.Payments_JD_Redis_MQ_AZ1

tags = {
 Name = "payments_ma1_jd_snowball"
 Cellulant = "cellulant-servers"
}
}

module "payments_ma2_jd_snowball" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.image_id
  name                   = "payments_ma2_jd_snowball"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "c5.2xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_common_sg, var.payments_ma_jd_sg]
  subnet_id              = var.Payments_JD_Redis_MQ_AZ1

tags = {
 Name = "payments_ma2_jd_snowball"
 Cellulant = "cellulant-servers"
}
}


module "payments_ca1_jd_snowball" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.image_id
  name                   = "payments_ca1_jd_snowball"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "c5.4xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_common_sg, var.payments_ca_jd_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "payments_ca1_jd_snowball"
 Cellulant = "cellulant-servers"
}
}

module "payments_ca2_jd_snowball" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.image_id
  name                   = "payments_ca2_jd_snowball"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "c5.2xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_common_sg, var.payments_ca_jd_sg]
  subnet_id              = var.Payments_Backends_Apps_AZ1

tags = {
 Name = "payments_ca2_jd_snowball"
 Cellulant = "cellulant-servers"
}
}

