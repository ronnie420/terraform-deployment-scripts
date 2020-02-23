resource "aws_elasticache_subnet_group" "ecc_subnet_group_cde_staging" {
  name       = "ecc-subnet-group-cde-staging"
  description = "ECC subnet Group for CDE STAGING"
  subnet_ids = [var.AWS-TEST-SUBNET,]
}
