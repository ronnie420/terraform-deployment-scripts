# aws_security_group.dtap_01_common_sg:
resource "aws_security_group" "dtap_01_common_sg" {
  name   = "dtap_01_common_sg"
  vpc_id = aws_vpc.DTAP_01_VPC.id
  description = "dtap_01 common security group. Used for PCI Instances"
   tags                   = {
     "Name" = "dtap_01_common_sg"
        
    }
}


# aws_security_group_rule.dtap_01_common_sg-1:
resource "aws_security_group_rule" "dtap_01_common_sg-1" {
  cidr_blocks = ["10.250.4.128/32",]
  description       = "Allow SSH from Nixswing"
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.dtap_01_common_sg.id
  to_port           = 22
  type              = "ingress"
}

# aws_security_group_rule.dtap_01_common_sg-2:
resource "aws_security_group_rule" "dtap_01_common_sg-2" {
  cidr_blocks = [
    "0.0.0.0/0",
  ]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.dtap_01_common_sg.id
  self              = false
  to_port           = 0
  type              = "egress"
}


