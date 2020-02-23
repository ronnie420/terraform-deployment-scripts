module "web_01_slam" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ireland_image_id
  name                   = "web_01_slam"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = false
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.dw_vpc_common_sg,]
  subnet_id              = var.dw_Web_Tools_AZ1

tags = {
 Name = "web_01_slam"
 Cellulant = "cellulant-servers"

}

}

module "web_02_slam" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ireland_image_id
  name                   = "web_02_slam"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = false
  instance_type          = "t2.large"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.dw_vpc_common_sg,]
  subnet_id              = var.dw_Web_Tools_AZ2

tags = {
 Name = "web_02_slam"
 Cellulant = "cellulant-servers"

}

}
