module "payments_sd_ctc" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_sd_ctc"
  instance_count         = 1
  ami                    = "ami-099dcded4aeb1f86e"
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_ct_sg]
  subnet_id              = var.Payments_Web_Tools_AZ1

tags = {
 Name = "payments_sd_ctc"
 Cellulant = "cellulant-servers"

}


}
