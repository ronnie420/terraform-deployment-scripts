output "mq_01_slam_beta_Private_IP" {
  description = "Private Ip of mq_01 instance"
  value       = module.mq_01_slam_beta.private_ip 
}

output "java_01_slam_betaPrivate_IP" {
  description = "Private Ip of java_01 instance"
  value       = module.java_01_slam_beta.private_ip 
}

output "web_01_slam_beta_Private_IP" {
  description = "Private Ip of java_01 instance"
  value       = module.web_01_slam_beta.private_ip 
}
