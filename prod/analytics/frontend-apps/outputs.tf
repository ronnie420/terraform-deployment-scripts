output "web_01_slam_Private_IP" {
  description = "Private Ip of web_01 instance"
  value       = module.web_01_slam.private_ip 
}

output "web_02_slam_Private_IP" {
  description = "Private Ip of web_02 instance"
  value       = module.web_02_slam.private_ip 
}

