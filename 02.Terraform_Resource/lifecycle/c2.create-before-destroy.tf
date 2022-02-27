resource "aws_instance" "my-web-server" {
  ami           = "ami-033b95fb8079dc481"
  instance_type = "t2.micro"
  #availability_zone = "us-east-1a"
  availability_zone = "us-east-1b"


  tags = {
    "Name" = "web-server"
  }

  lifecycle {
    create_before_destroy = true
  }

}
