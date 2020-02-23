module "wallets_mifo_mz" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                          = var.image_id
  name                   = "wallets_mifo_mz"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.wallets_sg]
  subnet_id              = var.mula_wallets_backend_apps_az1

tags = {
 Name = "wallets_mifo_mz"
 Cellulant = "cellulant-servers"


}
}


#resource "aws_instance" "zampost_wallet_server" {
#    ami                          = var.image_id
#    associate_public_ip_address  = false
#    disable_api_termination      = true
#    ebs_optimized                = false
#    iam_instance_profile         = "CEL-IAM-SSM-ROLE"
#    instance_type                = "t2.xlarge"
#    key_name                     = var.key_name_infra
#    monitoring                   = false
#    subnet_id                    = var.mula_wallets_backend_apps_az1
#tags                         = {
#        "Cellulant" = "cellulant-servers"
#        "Name"      = "zampost_wallet_server"
#
#}
#vpc_security_group_ids       = [
#        var.wallets_sg,
#
#]
#}

module "zampost_wallet_server" {
  source                 = "../../../modules/terraform-aws-ec2-instance/"
  ami                          = var.image_id
  name                   = "wallets_mifo_mz"
  instance_count         = 1
  disable_api_termination      = true
  ebs_optimized          = false
  instance_type          = "t2.xlarge"
  key_name               = var.key_name_infra
  iam_instance_profile   = "CEL-IAM-SSM-ROLE"
  monitoring             = false
  vpc_security_group_ids = [var.wallets_sg]
  subnet_id              = var.mula_wallets_backend_apps_az1

tags = {
 Name = "zampost_wallet_server"
 Cellulant = "cellulant-servers"


}
}

