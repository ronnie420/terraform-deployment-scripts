module "dtap_nexus_01" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "dtap_nexus_01"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = var.image_id
  instance_type          = "m5.large"
  key_name               = var.keyname_cicd
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.DTAP_01_COMMON_SG,]
  subnet_id              = data.terraform_remote_state.vpc.outputs.DTAP_01_Backends_Apps_AZ1

tags = {
 Name = "dtap_nexus_01"
 Cellulant = "cellulant-servers"
 Environment = "Staging"
}

root_block_device = [{
    volume_type = "gp2"
    volume_size = 100
  
}]
}

module "dtap_consul_01" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "dtap_consul_01"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = var.image_id
  instance_type          = "m5.large"
  key_name               = var.keyname_cicd
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.DTAP_01_COMMON_SG,]
  subnet_id              = data.terraform_remote_state.vpc.outputs.DTAP_01_Backends_Apps_AZ1

tags = {
 Name = "dtap_consul_01"
 Cellulant = "cellulant-servers"
 Environment = "Staging"
}
}

module "dtap_gitlab_01" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "dtap_gitlab_01"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = var.image_id
  instance_type          = "t2.small"
  key_name               = var.keyname_cicd
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.DTAP_01_COMMON_SG,]
  subnet_id              = data.terraform_remote_state.vpc.outputs.DTAP_01_Backends_Apps_AZ1

tags = {
 Name = "dtap_gitlab_01"
 Cellulant = "cellulant-servers"
 Environment = "Staging"
}
}


module "dtap_rancher_01" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "dtap_rancher_01"
  instance_count         = 1
  disable_api_termination      = false
  ami                    = var.image_id
  instance_type          = "m5.large"
  key_name               = var.keyname_cicd
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = true
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.DTAP_01_COMMON_SG,]
  subnet_id              = data.terraform_remote_state.vpc.outputs.DTAP_01_Backends_Apps_AZ1

tags = {
 Name = "dtap_rancher_01"
 Cellulant = "cellulant-servers"
 Environment = "Staging"
}
}

