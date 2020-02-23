# aws_security_group_rule.mw-wallet-sg:
resource "aws_security_group_rule" "mw-wallet-sg" {
cidr_blocks       = [
        "10.250.0.0/16",
    
]
    from_port         = 0
    protocol          = "tcp"
    security_group_id = aws_security_group.mw-wallet-sg.id
    self              = false
    to_port           = 65535
    type              = "ingress"

}

# aws_security_group_rule.mw-wallet-sg-1:
resource "aws_security_group_rule" "mw-wallet-sg-1" {
cidr_blocks       = [
        "0.0.0.0/0",
    
]
    from_port         = 9880
    protocol          = "tcp"
    security_group_id = aws_security_group.mw-wallet-sg.id
    self              = false
    to_port           = 9880
    type              = "ingress"

}

# aws_security_group_rule.mw-wallet-sg-2:
resource "aws_security_group_rule" "mw-wallet-sg-2" {
cidr_blocks       = [
        "197.159.101.254/32",
        "197.159.100.254/32",
        "10.250.4.128/32",
    
]
    from_port         = 22
    protocol          = "tcp"
    security_group_id = aws_security_group.mw-wallet-sg.id
    self              = false
    to_port           = 22
    type              = "ingress"

}

# aws_security_group_rule.mw-wallet-sg-3:
resource "aws_security_group_rule" "mw-wallet-sg-3" {
cidr_blocks       = [
        "0.0.0.0/0",
    
]
    from_port         = 9008
    protocol          = "tcp"
    security_group_id = aws_security_group.mw-wallet-sg.id
    self              = false
    to_port           = 9008
    type              = "ingress"

}

# aws_security_group_rule.mw-wallet-sg-4:
resource "aws_security_group_rule" "mw-wallet-sg-4" {
cidr_blocks       = [
        "10.250.4.217/32",
    
]
    from_port         = 10050
    protocol          = "tcp"
    security_group_id = aws_security_group.mw-wallet-sg.id
    self              = false
    to_port           = 10050
    type              = "ingress"

}

# aws_security_group_rule.mw-wallet-sg-5:
resource "aws_security_group_rule" "mw-wallet-sg-5" {
cidr_blocks       = [
        "0.0.0.0/0",
    
]
    from_port         = 9908
    protocol          = "tcp"
    security_group_id = aws_security_group.mw-wallet-sg.id
    self              = false
    to_port           = 9908
    type              = "ingress"

}

# aws_security_group_rule.mw-wallet-sg-6:
resource "aws_security_group_rule" "mw-wallet-sg-6" {
cidr_blocks       = [
        "0.0.0.0/0",
    
]
    from_port         = 0
    protocol          = "-1"
    security_group_id = aws_security_group.mw-wallet-sg.id
    self              = false
    to_port           = 0
    type              = "egress"

}

