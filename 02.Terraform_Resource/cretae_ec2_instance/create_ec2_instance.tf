resource "aws_instance" "webserver" {
  ami = "ami-033b95fb8079dc481"

  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"

  tags = {
    Name = "webserver"
    env  = "prod"
  }

}
