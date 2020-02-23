#aws_instance.messaging_sd_vt1
resource "aws_instance" "messaging_sd_vt1" {
  ami                     = "ami-0f89e84f428be8820"
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = true
  subnet_id               = var.messaging_Backends_Apps_AZ1 
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "messaging_sd_vt1"
  }
  vpc_security_group_ids = [
    var.messaging_common_sg,
    var.messaging_vt_sd,
  ]
}

#aws_instance.messaging_sd_vt2
resource "aws_instance" "messaging_sd_vt2" {
  ami                     = "ami-0f89e84f428be8820"
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = true
  subnet_id               = var.messaging_Backends_Apps_AZ2 
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "messaging_sd_vt2"
  }
  vpc_security_group_ids = [
    var.messaging_common_sg,
    var.messaging_vt_sd,
  ]
}

