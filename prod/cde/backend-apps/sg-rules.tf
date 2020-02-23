# aws_security_group_rule.cde-common-sg:
resource "aws_security_group_rule" "cde-common-sg" {
    cidr_blocks       = ["10.250.4.128/32",]
    description       = "Allow SSH from Nixswing"
    from_port         = 22
    protocol          = "tcp"
    security_group_id = aws_security_group.cde-common-sg.id
    self              = false
    to_port           = 22
    type              = "ingress"

}

## aws_security_group_rule.cde-common-sg-1:
#resource "aws_security_group_rule" "cde-common-sg-1" {
#    cidr_blocks       = ["10.1.7.76/32","10.1.7.179/32",]
#    description       = "SSH from .179"
#    from_port         = 8091
#    protocol          = "tcp"
#    security_group_id = aws_security_group.cde-common-sg.id
#    self              = false
#    to_port           = 8091
#    type              = "ingress"
#
#}

# aws_security_group_rule.cde-common-sg-2:
resource "aws_security_group_rule" "cde-common-sg-2" {
    cidr_blocks       = ["0.0.0.0/0",]
    from_port         = 0
    protocol          = "-1"
    security_group_id = aws_security_group.cde-common-sg.id
    self              = false
    to_port           = 0
    type              = "egress"

}
