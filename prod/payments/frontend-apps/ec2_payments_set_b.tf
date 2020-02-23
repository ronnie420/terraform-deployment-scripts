module "payments_ct1_sb" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.image_id
  name                   = "payments_ct1_sb"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_common_sg, var.payments_ct_sg]
  subnet_id              = var.Payments_Web_Tools_AZ1

tags = {
 Name = "payments_ct1_sb"
 Cellulant = "cellulant-servers"
}
}

module "payments_ct2_sb" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                    = var.image_id
  name                   = "payments_ct2_sb"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_common_sg, var.payments_ct_sg]
  subnet_id              = var.Payments_Web_Tools_AZ2

tags = {
 Name = "payments_ct2_sb"
 Cellulant = "cellulant-servers"
}
}

