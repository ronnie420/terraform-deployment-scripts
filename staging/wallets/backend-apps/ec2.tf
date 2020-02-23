resource "aws_instance" "mw-wallet-02" {
    ami                          = var.image_id
    disable_api_termination      = true
    ebs_optimized                = false
    iam_instance_profile         = "CEL-IAM-SSM-ROLE"
    instance_type                = "t2.large"
    key_name                     = "CellulantInfra"
    monitoring                   = false
    subnet_id                    = var.wallets-subnet-az3
tags                         = {
        "Cellulant" = "cellulant-servers"
        "Name"      = "mw-wallet-02"
}
vpc_security_group_ids       = [
        var.mw-wallet-sg-id,
]

}

resource "aws_instance" "mw-wallet-04" {
    ami                          = var.image_id
    disable_api_termination      = true
    ebs_optimized                = false
    iam_instance_profile         = "CEL-IAM-SSM-ROLE"
    instance_type                = "t2.large"
    key_name                     = "CellulantInfra"
    monitoring                   = false
    subnet_id                    = var.wallets-subnet-az3
tags                         = {
        "Cellulant" = "cellulant-servers"
        "Name"      = "mw-wallet-04"
}
vpc_security_group_ids       = [
        var.mw-wallet-sg-id,
]

}

