#aws_instance.messaging_clank_va1
resource "aws_instance" "messaging_clank_va1" {
  ami                     = var.image_id
  disable_api_termination = false
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = var.backend_Subnet_AZ1
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "messaging_clank_va1"
  }
  vpc_security_group_ids = [
    var.staging_common_sg,
    var.messaging_common_sg,
  ]
}

#aws_instance.messaging_clank_va2
resource "aws_instance" "messaging_clank_va2" {
  ami                     = var.image_id
  disable_api_termination = false
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = var.backend_Subnet_AZ1
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "messaging_clank_va2"
  }
  vpc_security_group_ids = [
    var.staging_common_sg,
    var.messaging_common_sg,
  ]
}

#aws_instance.messaging_clank_va3
resource "aws_instance" "messaging_clank_va3" {
  ami                     = var.image_id
  disable_api_termination = false
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = var.backend_Subnet_AZ2
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "messaging_clank_va3"
  }
  vpc_security_group_ids = [
    var.staging_common_sg,
    var.messaging_common_sg,
  ]
}

#aws_instance.messaging_clank_va4
resource "aws_instance" "messaging_clank_va4" {
  ami                     = var.image_id
  disable_api_termination = false
  ebs_optimized           = false
  iam_instance_profile    = "CEL-IAM-SSM-ROLE"
  instance_type           = "t2.medium"
  key_name                = var.key_name_infra
  monitoring              = false
  subnet_id               = var.backend_Subnet_AZ2
  tags = {
    "Cellulant" = "cellulant-servers"
    "Name"      = "messaging_clank_va4"
  }
  vpc_security_group_ids = [
    var.staging_common_sg,
    var.messaging_common_sg,
  ]
}

