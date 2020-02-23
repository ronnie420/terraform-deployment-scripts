resource "aws_instance" "freeipa-02" {
    ami                          = var.image_id
    disable_api_termination      = false
    ebs_optimized                = false
    iam_instance_profile         = "CEL-IAM-SSM-ROLE"
    instance_type                = "t2.medium"
    key_name                     = "CellulantKey"
    monitoring                   = false
    subnet_id                    = var.AWS_Shared_Cluster_AZ2

tags                         = {
        "Cellulant" = "cellulant-servers"
        "Name"      = "Free IPA 02"
}
root_block_device {
        volume_size = 100
        volume_type = "gp2"
    
}
vpc_security_group_ids       = [var.freeipa-sg,]

}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = "${aws_instance.freeipa-02.id}"
  allocation_id = var.eip_id
}
