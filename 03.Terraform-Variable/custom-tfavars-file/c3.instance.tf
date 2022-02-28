resource "aws_instance" "my-web-server" {
  ami                    = var.ami_id
  instance_type          = var.ec2_instance_type
  count                  = var.ec2_count
  vpc_security_group_ids = [aws_security_group.allow-web.id]
  user_data              = file("userdata.sh")

  tags = {
    Name = "web-server-${count.index}"
  }


}
