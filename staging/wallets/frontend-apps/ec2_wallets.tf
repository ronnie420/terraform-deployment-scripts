module "wallet_demo_01" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                          = var.image_id
  name                   = "wallet_demo_01"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.staging_common_sg]
  subnet_id              = var.backend_Subnet_AZ1

tags = {
 Name = "wallet_demo_01"
 Cellulant = "cellulant-servers"
}
}


