resource "aws_instance" "cpanel-02" {
    ami                          = var.image_id
    disable_api_termination      = false
    ebs_optimized                = false
    iam_instance_profile         = "CEL-IAM-SSM-ROLE"
    instance_type                = "t2.large"
    key_name                     = "CellulantInfra"
    monitoring                   = false
    subnet_id                    = var.Public_Subnet_AZ1
    vpc_security_group_ids       = [var.internet-remote-mgt-sg,var.cpanel-sg,]
    tags                         = {
        "Cellulant" = "cellulant-servers"
        "Name"      = "cpanel_02"
    }

}

resource "aws_volume_attachment" "cpanel_att_home" {
  device_name = "/dev/sdb"
  volume_id   = "${aws_ebs_volume.cpanel_home.id}"
  instance_id = "${aws_instance.cpanel-02.id}"
}

resource "aws_volume_attachment" "cpanel_att_logs" {
  device_name = "/dev/sdc"
  volume_id   = "${aws_ebs_volume.cpanel_logs.id}"
  instance_id = "${aws_instance.cpanel-02.id}"
}

resource "aws_volume_attachment" "cpanel_att_swap" {
  device_name = "/dev/sdd"
  volume_id   = "${aws_ebs_volume.cpanel_swap.id}"
  instance_id = "${aws_instance.cpanel-02.id}"
}

resource "aws_volume_attachment" "cpanel_att_backups" {
  device_name = "/dev/sde"
  volume_id   = "${aws_ebs_volume.cpanel_backups.id}"
  instance_id = "${aws_instance.cpanel-02.id}"
}
