resource "aws_ami_from_instance" "git-server_clone" {
  name               = "git_serve_clone_20191101"
  source_instance_id = "i-095a7063815d247f0"
  snapshot_without_reboot = true
tags = {
    Name = "git_server_clone_20191119"
}
}
