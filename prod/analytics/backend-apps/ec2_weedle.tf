module "data_analytics_1_weedle" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ami_id
  name                   = "data_analytics_1_weedle"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.dw_vpc_common_sg,]
  subnet_id              = var.dw_Backends_Apps_AZ1

tags = {
 Name = "data_analytics_1_weedle"
 Cellulant = "cellulant-servers"
}
}

