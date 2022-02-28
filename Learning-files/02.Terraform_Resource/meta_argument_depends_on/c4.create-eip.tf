resource "aws_eip" "my-eip" {
  instance = aws_instance.my-web-server.id
  depends_on = [
    aws_internet_gateway.dev-vpc-igw
  ]
  tags = {
    Name = "My-dev-eip"
  }

}
