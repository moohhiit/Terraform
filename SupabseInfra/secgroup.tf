resource "aws_security_group" "supabase-sg" {
  name        = "supabase-sg"
  description = "supabase-sg"
  tags = {
    name = "supabase-sg"
  }

}
resource "aws_vpc_security_group_ingress_rule" "sshfrommyip" {
  security_group_id = aws_security_group.supabase-sg.id
  cidr_ipv4         = "183.82.162.218/32"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_supabase_api" {
  security_group_id = aws_security_group.supabase-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 54321
  ip_protocol       = "tcp"
  to_port           = 54321
}

resource "aws_vpc_security_group_ingress_rule" "allow_supabase_studio" {
  security_group_id = aws_security_group.supabase-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 54323
  ip_protocol       = "tcp"
  to_port           = 54323
}


resource "aws_vpc_security_group_egress_rule" "allow_all_outbound_ipv4" {
  security_group_id = aws_security_group.supabase-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}
resource "aws_vpc_security_group_egress_rule" "allow_all_outbound_ipv6" {
  security_group_id = aws_security_group.supabase-sg.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1"
}
