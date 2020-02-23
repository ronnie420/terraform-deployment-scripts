module "recovery_instance" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                          = var.ireland_image_id
  name                   = "recovery_instance"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.micro"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_common_sg,]
  subnet_id              = var.Payments_Backends_Apps_AZ2

tags = {
 Name = "recovery_instance"
 Cellulant = "cellulant-servers"
}

}
