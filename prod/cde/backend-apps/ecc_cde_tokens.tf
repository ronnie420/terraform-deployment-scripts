resource "aws_elasticache_cluster" "ecc_cde_tokens" {
  cluster_id           = "ecc-non-cde-pichu"
  engine               = "redis"
  node_type            = "cache.t2.medium"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis5.0"
  engine_version       = "5.0.5"
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.ecc_subnet_group_cde_tokens.name 
}
