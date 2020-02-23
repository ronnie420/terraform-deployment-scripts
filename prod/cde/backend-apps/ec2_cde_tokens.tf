#aws_instance.cde_tokens_php_1
resource "aws_instance" "cde_tokens_php_1" {
  ami                     = var.image_id
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = data.terraform_remote_state.vpc.outputs.CDE_TOKENS_Backends_Apps_AZ1
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "non_cde_php_1"
  }
  vpc_security_group_ids = [
    data.terraform_remote_state.vpc.outputs.CDE_TOKENS_COMMON_SG,
  ]
}

#aws_instance.cde_tokens_php_2
resource "aws_instance" "cde_tokens_php_2" {
  ami                     = var.image_id
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = data.terraform_remote_state.vpc.outputs.CDE_TOKENS_Backends_Apps_AZ2
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "non_cde_php_2"
  }
  vpc_security_group_ids = [
    data.terraform_remote_state.vpc.outputs.CDE_TOKENS_COMMON_SG,
  ]
}


#cde_tokens_JAVA

#aws_instance.cde_tokens_java_1
resource "aws_instance" "cde_tokens_java_1" {
  ami                     = var.image_id
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = data.terraform_remote_state.vpc.outputs.CDE_TOKENS_Backends_Apps_AZ1
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "non_cde_java_1"
  }
  vpc_security_group_ids = [
    data.terraform_remote_state.vpc.outputs.CDE_TOKENS_COMMON_SG,
  ]
}

#aws_instance.cde_tokens_java_2
resource "aws_instance" "cde_tokens_java_2" {
  ami                     = var.image_id
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = data.terraform_remote_state.vpc.outputs.CDE_TOKENS_Backends_Apps_AZ2
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "non_cde_java_2"
  }
  vpc_security_group_ids = [
    data.terraform_remote_state.vpc.outputs.CDE_TOKENS_COMMON_SG,
  ]
}

module "non_cde_mq1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "non_cde_mq1"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = var.image_id_ireland_default
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.CDE_TOKENS_COMMON_SG,] 
  subnet_id              = data.terraform_remote_state.vpc.outputs.CDE_TOKENS_JD_Redis_MQ_AZ1

tags = {
 Name = "non_cde_mq1"
 Cellulant = "cellulant-servers"

}

}

module "non_cde_mq2" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "non_cde_mq2"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = var.image_id_ireland_default
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.CDE_TOKENS_COMMON_SG,] 
  subnet_id              = data.terraform_remote_state.vpc.outputs.CDE_TOKENS_JD_Redis_MQ_AZ2

tags = {
 Name = "non_cde_mq2"
 Cellulant = "cellulant-servers"

}

}
