resource "aws_elasticache_subnet_group" "ecc_subnet_group_cde_tokens" {
  name       = "ecc-subnet-group-cde-tokens"
  description = "ECC subnet Group for CDE TOKENS"
  subnet_ids = ["${data.terraform_remote_state.vpc.outputs.CDE_TOKENS_JD_Redis_MQ_AZ1}","${data.terraform_remote_state.vpc.outputs.CDE_TOKENS_JD_Redis_MQ_AZ2}",]
}
