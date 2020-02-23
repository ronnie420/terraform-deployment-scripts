resource "aws_security_group" "cde-common-sg" {
  name        = "cde-common-sg"
  description = "CDE common security group. Used for PCI Instances"
  vpc_id      = data.terraform_remote_state.vpc.outputs.CDE_VPC_ID

  tags = {
    "Name" = "cde-common-sg"
  }
}


