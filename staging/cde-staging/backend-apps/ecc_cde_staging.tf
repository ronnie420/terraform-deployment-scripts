resource "aws_elasticache_cluster" "ecc_cde_staging" {
  cluster_id           = "ecc-cde-staging"
  engine               = "redis"
  node_type            = "cache.t2.medium"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis5.0"
  engine_version       = "5.0.5"
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.ecc_subnet_group_cde_staging.name 
  security_group_ids    = ["sg-078d27f81731e1471",]
}
