#Create Subnet group
resource "aws_db_subnet_group" "cde_tokens_subnet_group" {
  name       = "cde_tokens_subnet_group"
  description= "CDE TOKENS DB SUBNET GROUP"
  subnet_ids = [data.terraform_remote_state.vpc.outputs.CDE_TOKENS_DB_AZ1, data.terraform_remote_state.vpc.outputs.CDE_TOKENS_DB_AZ2]

tags = {
    Name = "cde_tokens_subnet_group"

}
}

## Create database
#resource "aws_rds_cluster" "non_cde_db1" {
#  cluster_identifier = var.db_identifier
#  database_name           = var.db_name
#  deletion_protection = true
#  backup_retention_period = 1 
#  engine = "aurora"
#  engine_version = "5.6.10a"
#  port = "3306"
#  skip_final_snapshot  = true
#  master_username         = var.username
#  master_password         = var.password
#  availability_zones      = ["eu-west-1a", "eu-west-1b"]
#  db_subnet_group_name = aws_db_subnet_group.cde_tokens_subnet_group.name
#  vpc_security_group_ids =[data.terraform_remote_state.vpc.outputs.CDE_TOKENS_COMMON_SG]
#  tags = {
#    Name = var.db_name
#  }
#}
