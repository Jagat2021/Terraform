resource "aws_instance" "webserver" {
  ami                    = data.aws_ami.latest-amazon-ami.id
  instance_type          = var.ec2_instance_type["uat-app"]
  count                  = var.ec2_count
  vpc_security_group_ids = [aws_security_group.allow-ssh.id, aws_security_group.allow-web.id]
  user_data              = <<-EOH
    #! /bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo service httpd start  
    sudo systemctl enable httpd
    echo "<h1>Welcome to JAGAT's terraform</h1>" > /var/www/html/index.html

  EOH

  tags = var.ec2_tags
}
