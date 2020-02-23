#aws_instance.cde_php_1
resource "aws_instance" "cde_php_1" {
  ami                     = var.image_id
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = data.terraform_remote_state.vpc.outputs.CDE_Backends_Apps_AZ1
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "cde_php_1"
  }
  vpc_security_group_ids = [
    data.terraform_remote_state.vpc.outputs.CDE_COMMON_SG,
  ]
}

#aws_instance.cde_php_2
resource "aws_instance" "cde_php_2" {
  ami                     = var.image_id
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = data.terraform_remote_state.vpc.outputs.CDE_Backends_Apps_AZ2
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "cde_php_2"
  }
  vpc_security_group_ids = [
    data.terraform_remote_state.vpc.outputs.CDE_COMMON_SG,
  ]
}


#CDE_JAVA

#aws_instance.cde_java_1
resource "aws_instance" "cde_java_1" {
  ami                     = var.image_id
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = data.terraform_remote_state.vpc.outputs.CDE_Backends_Apps_AZ1
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "cde_java_1"
  }
  vpc_security_group_ids = [
    data.terraform_remote_state.vpc.outputs.CDE_COMMON_SG,
  ]
}

#aws_instance.cde_java_2
resource "aws_instance" "cde_java_2" {
  ami                     = var.image_id
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = data.terraform_remote_state.vpc.outputs.CDE_Backends_Apps_AZ2
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "cde_java_2"
  }
  vpc_security_group_ids = [
    data.terraform_remote_state.vpc.outputs.CDE_COMMON_SG,
  ]
}

#aws_instance.cde_vc_01
resource "aws_instance" "cde_vc_01" {
  ami                     = var.image_id
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = data.terraform_remote_state.vpc.outputs.CDE_Backends_Apps_AZ1
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "vc_01_kakuna"
  }
  vpc_security_group_ids = [
    data.terraform_remote_state.vpc.outputs.CDE_COMMON_SG,
  ]
}

module "cde_mq1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "cde_mq1"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = var.image_id_ireland_default
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.CDE_COMMON_SG,]
  subnet_id              = data.terraform_remote_state.vpc.outputs.CDE_JD_Redis_MQ_AZ1

tags = {
 Name = "cde_mq1"
 Cellulant = "cellulant-servers"
}
}

module "cde_mq2" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "cde_mq2"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = var.image_id_ireland_default
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.CDE_COMMON_SG,]
  subnet_id              = data.terraform_remote_state.vpc.outputs.CDE_JD_Redis_MQ_AZ2

tags = {
 Name = "cde_mq2"
 Cellulant = "cellulant-servers"
}
}
