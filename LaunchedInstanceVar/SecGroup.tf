resource "aws_security_group" "dev-sg" {
  name        = "dev-sg"
  description = "dev-sg"
  tags = {
    Name = "dev-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "sshfrommyip" {
  security_group_id = aws_security_group.dev-sg.id
  cidr_ipv4         = "183.82.162.98/32"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.dev-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_outbound_ipv4" {
  security_group_id = aws_security_group.dev-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}

resource "aws_vpc_security_group_egress_rule" "allow_all_outbound_ipv6" {
  security_group_id = aws_security_group.dev-sg.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1"
}