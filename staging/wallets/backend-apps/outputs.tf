output "mw_wallets_02_private_ip" {
  description = "Private IP of instance"
  value       = join("", aws_instance.mw-wallet-02.*.private_ip)
}
