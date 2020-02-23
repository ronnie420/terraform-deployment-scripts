#aws_instance.messaging_clank_va3
resource "aws_instance" "messaging_clank_vt3" {
  ami                     = var.image_id
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = var.messaging_Web_Tools_AZ1 
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "messaging_clank_vt3"
  }
  vpc_security_group_ids = [
    var.messaging_common_sg,
    var.messaging_vt_sg,
  ]
}

#aws_instance.messaging_clank_mon3
resource "aws_instance" "messaging_clank_mon3" {
  ami                     = var.image_id
  disable_api_termination = true
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = var.messaging_Web_Tools_AZ1 
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "messaging_clank_mon3"
  }
  vpc_security_group_ids = [
    var.messaging_common_sg,
    var.messaging_vt_sg,
  ]
}
