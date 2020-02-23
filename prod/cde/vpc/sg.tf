# aws_security_group.cde-common-sg:
resource "aws_security_group" "cde-common-sg" {
  name   = "cde-common-sg"
  vpc_id = aws_vpc.CDE_VPC.id
  description = "CDE common security group. Used for PCI Instances"
   tags                   = {
     "Name" = "cde-common-sg"
        
    }
}

# aws_security_group_rule.cde-common-sg will be destroyed
 resource "aws_security_group_rule" "cde-common-sg" {
 cidr_blocks       = ["10.245.3.243/32",]
     description       = "Allow Security Center"
     from_port         = 0
     protocol          = "-1"
    security_group_id = aws_security_group.cde-common-sg.id
     to_port           = 0
     type              = "ingress"
    
}
# aws_security_group_rule.cde-common-sg-2:
resource "aws_security_group_rule" "cde-common-sg-2" {
  cidr_blocks = [
    "0.0.0.0/0",
    "10.250.4.128/32",
  ]
  from_port         = 9443
  protocol          = "tcp"
  security_group_id = aws_security_group.cde-common-sg.id
  to_port           = 9443
  type              = "ingress"
}

# aws_security_group_rule.cde-common-sg-3:
resource "aws_security_group_rule" "cde-common-sg-3" {
  cidr_blocks = []
  from_port         = 9443
  protocol          = "tcp"
  security_group_id = aws_security_group.cde-common-sg.id
  ipv6_cidr_blocks  = ["::/0",]
  to_port           = 9443
  type              = "ingress"
}
# aws_security_group_rule.cde-common-sg-4:
resource "aws_security_group_rule" "cde-common-sg-4" {
  cidr_blocks = [
    "10.1.7.76/32",
    "10.1.7.179/32",
  ]
  description       = "SSH from .179"
  from_port         = 8091
  protocol          = "tcp"
  security_group_id = aws_security_group.cde-common-sg.id
  to_port           = 8091
  type              = "ingress"
}

# aws_security_group_rule.cde-common-sg-5:
resource "aws_security_group_rule" "cde-common-sg-5" {
  cidr_blocks = [
    "10.1.7.179/32",
  ]
  from_port         = -1
  protocol          = "icmp"
  security_group_id = aws_security_group.cde-common-sg.id
  to_port           = -1
  type              = "ingress"
}
# aws_security_group_rule.cde-common-sg-1:
resource "aws_security_group_rule" "cde-common-sg-1" {
  cidr_blocks = ["10.250.4.128/32",]
  description       = "Allow SSH from Nixswing"
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.cde-common-sg.id
  to_port           = 22
  type              = "ingress"
}

# aws_security_group_rule.cde-common-sg-6:
resource "aws_security_group_rule" "cde-common-sg-6" {
  cidr_blocks = [
    "0.0.0.0/0",
  ]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.cde-common-sg.id
  self              = false
  to_port           = 0
  type              = "egress"
}

# aws_security_group.cde-tokens-common-sg:
resource "aws_security_group" "cde-tokens-common-sg" {
  name   = "cde-tokens-common-sg"
  vpc_id = aws_vpc.CDE_TOKENS_VPC.id
  description = "CDE TOKENS common security group. Used for PCI Instances"

}

# aws_security_group_rule.cde-tokens-common-sg-1:
resource "aws_security_group_rule" "cde-tokens-allow-outbound" {
cidr_blocks = [
    "0.0.0.0/0",
  
]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.cde-tokens-common-sg.id
  self              = false
  to_port           = 0
  type              = "egress"

}

# aws_security_group_rule.cde-tokens-common-sg:
resource "aws_security_group_rule" "cde-tokens-common-ssh-1" {
cidr_blocks = [
    "10.250.4.128/32",
  
]
  description       = "Allow SSH from Nixswing"
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.cde-tokens-common-sg.id
  self              = false
  to_port           = 22
  type              = "ingress"

}
