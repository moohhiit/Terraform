resource "aws_instance" "supabase" {
  ami                    = var.amiID[var.region]
  instance_type          = "c7i-flex.large"
  key_name               = aws_key_pair.supabase-key-pair.key_name
  vpc_security_group_ids = [aws_security_group.supabase-sg.id]

  availability_zone = var.zone
  root_block_device {
    volume_size = 25
    volume_type = "gp3"
  }

  tags = {
    Name    = "Supabase-Instance"
    Project = "Supabase"
  }

  provisioner "file" {
    source      = "supabase.sh"
    destination = "/tmp/supabase.sh"

  }

  connection {
    type        = "ssh"
    user        = var.supabase-user
    private_key = file("supabase")
    host        = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/supabase.sh",
      "sudo /tmp/supabase.sh"
    ]
  }



}

resource "aws_ec2_instance_state" "supabase-state" {
  instance_id = aws_instance.supabase.id
  state       = "running"
}


output "public_ip" {
  description = "Instance Public IP"
  value       = aws_instance.supabase.public_ip

}
