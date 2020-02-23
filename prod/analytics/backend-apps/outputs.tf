output "weedle_01_Private_IP" {
  description = "Private Ip of data_analytics instance"
  value       = module.data_analytics_1_weedle.private_ip 
}

output "vault_01_seel_Private_IP" {
  description = "Private Ip of vault_01_seel instance"
  value       = module.vault_01_seel.private_ip 
}

output "vault_02_seel_Private_IP" {
  description = "Private Ip of vault_02_seel instance"
  value       = module.vault_02_seel.private_ip 
}

output "vault_03_seel_Private_IP" {
  description = "Private Ip of vault_03_seel instance"
  value       = module.vault_03_seel.private_ip 
}

output "mq_01_slam_Private_IP" {
  description = "Private Ip of mq_01 instance"
  value       = module.mq_01_slam.private_ip 
}

output "mq_02_slam_Private_IP" {
  description = "Private Ip of mq_02 instance"
  value       = module.mq_02_slam.private_ip 
}

output "jave_01_slam_Private_IP" {
  description = "Private Ip of java_01 instance"
  value       = module.java_01_slam.private_ip 
}

output "jave_02_slam_Private_IP" {
  description = "Private Ip of java_02 instance"
  value       = module.java_02_slam.private_ip 
}

output "jave_03_slam_Private_IP" {
  description = "Private Ip of java_03 instance"
  value       = module.java_03_slam.private_ip 
}
