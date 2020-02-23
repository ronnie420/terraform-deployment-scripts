resource "aws_elasticache_subnet_group" "ecc_subnet_group_cde" {
  name       = "ecc-subnet-group-cde"
  description = "ECC subnet Group for CDE"
  subnet_ids = ["${data.terraform_remote_state.vpc.outputs.CDE_JD_Redis_MQ_AZ1}","${data.terraform_remote_state.vpc.outputs.CDE_JD_Redis_MQ_AZ2}",]
}
