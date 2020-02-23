resource "aws_security_group" "mw-wallet-sg" {
  name        = "mw-wallet"
  description = "Malawi Wallet SG"
  vpc_id      = var.frankfurt-default-vpc-id

  tags = {
    "Name" = "mw-wallet"
  }
}
