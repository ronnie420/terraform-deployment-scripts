#Create Subnet group
resource "aws_db_subnet_group" "dw_subnet_group" {
  name       = "data_analytics_subnet_group"
  subnet_ids = [var.analytics_db_az1, var.analytics_db_az2]

tags = {
    Name = "data_analytics_subnet_group"
}

}

# Create database
resource "aws_db_instance" "dw_db1" {
  name = var.db_name
  identifier = var.db_identifier
  deletion_protection = true
  monitoring_interval = 60
  engine = "mysql"
  engine_version = "5.7"
  storage_type         = "gp2"
  port = "3306"
  instance_class = "db.t2.xlarge"
  allocated_storage     = 200
  username             = var.username
  password             = var.password
  db_subnet_group_name = aws_db_subnet_group.dw_subnet_group.name
  vpc_security_group_ids =["sg-002eaedfedce05aef"] 
  tags = {
    Name = var.db_name  
  }

}

