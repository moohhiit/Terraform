resource "aws_instance" "web" {
  ami                    = var.amiID[var.region]
  instance_type          = "t3.micro"
  key_name               = "dev-key"
  vpc_security_group_ids = [aws_security_group.dev-sg.id]

  availability_zone = var.zone

  tags = {
    Name    = "dev-web"
    Project = "dove"
  }

}

resource "aws_ec2_instance_state" "web-state" {
  instance_id = aws_instance.web.id

  state = "running"

}
