resource "aws_instance" "web-1" {
  ami               = "ami-033b95fb8079dc481"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  count             = 3

  tags = {
    Name = "Dev-${count.index}"
    Env  = "Env:${count.index}"
  }

}
