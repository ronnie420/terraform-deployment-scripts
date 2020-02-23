module "web_01_slam_beta" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ohio_image_id
  name                   = "web_01_slam_beta"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_Ohio
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.slam_common_sg,]
  subnet_id              = var.frontend_Subnet_AZ1

tags = {
 Name = "web_01_slam"
 Cellulant = "cellulant-servers"
}
}

module "mq_01_slam_beta" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ohio_image_id
  name                   = "mq_01_slam_beta"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_Ohio
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.slam_common_sg,]
  subnet_id              = var.backend_Subnet_AZ1

tags = {
 Name = "mq_01_slam"
 Cellulant = "cellulant-servers"
}
}

module "java_01_slam_beta" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.ohio_image_id
  name                   = "java_01_slam_beta"
  instance_count         = 1
  disable_api_termination      = false
  ebs_optimized          = false
  instance_type          = "t2.large"
  key_name               = var.key_name_Ohio
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.slam_common_sg,]
  subnet_id              = var.backend_Subnet_AZ1

tags = {
 Name = "java_01_slam_beta"
 Cellulant = "cellulant-servers"
}
}

