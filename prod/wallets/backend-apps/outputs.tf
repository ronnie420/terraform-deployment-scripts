#output "zampost_wallet_server_private_ip" {
#  description = "Private IP of instance"
#  #value       = join("", aws_instance.zampost_wallet_server.*.private_ip)
#  value       = join("", module.zampost_wallet_server.private_ip[0] )
#}
#output "wallets_mifo_mz_private_ip" {
#  description = "Private IP of instance"
#  value       = join("", module.wallets_mifo_mz.private_ip[0])
#}
