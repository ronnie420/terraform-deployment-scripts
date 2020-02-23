module "payments_gh_ct1" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  name                   = "payments_gh_ct1"
  instance_count         = 1
  ami                    = aws_ami_from_instance.payments_sd_ctc_clone.id
  instance_type          = "t2.medium"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.payments_ct_sg]
  subnet_id              = var.Payments_Web_Tools_AZ1

tags = {
 Name = "payments_gh_ct1"
 Cellulant = "cellulant-servers"

}
}

resource "aws_ami_from_instance" "payments_sd_ctc_clone" {
  name               = "payments_sd_ctc_clone_20191112"
  source_instance_id = "i-0042bd0ad28c90f4f"
  snapshot_without_reboot = true
tags = {
    Name = "payments_sd_ctc_clone_20191112"
}
}
