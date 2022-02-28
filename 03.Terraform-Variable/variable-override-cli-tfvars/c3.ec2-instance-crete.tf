resource "aws_instance" "my-web-server" {
  ami                    = var.ec2_ami_id
  count                  = var.ec2_count
  vpc_security_group_ids = [aws_security_group.allow-ssh.id, aws_security_group.allow-web.id]
  user_data              = file("userdata.sh")
  instance_type          = var.instance_type

  tags = {
    Name = "my-web-server"
  }

}

#terraform plan -var="ec2_count=1" -var="aws_region=us-west-1" -var="instance_type=t3.micro"
