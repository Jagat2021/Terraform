resource "aws_instance" "my-web-server" {
  ami                         = "ami-033b95fb8079dc481"
  instance_type               = "t2.micro"
  availability_zone           = "us-east-1a"
  subnet_id                   = aws_subnet.dev-vpc-public-subnet.id
  associate_public_ip_address = true
  key_name                    = "test-kp"
  vpc_security_group_ids      = [aws_security_group.security-group-1.id]
  user_data                   = file("userdata.sh")

  tags = {
    Name = "my-web-server"
  }

}
