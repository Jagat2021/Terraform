# resource-1 VPC
resource "aws_vpc" "dev-vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
    "Name" = "dev-vpc"
  }
}

#resource-2 Subnet
resource "aws_subnet" "dev-vpc-public-subnet" {
  vpc_id                  = aws_vpc.dev-vpc.id
  cidr_block              = "192.168.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "public-subnet"
  }
}

#resource-3 Internet Gateway
resource "aws_internet_gateway" "dev-vpc-igw" {
  vpc_id = aws_vpc.dev-vpc.id
  tags = {
    "Name" = "dev-vpc-igw"
  }

}

#resource-4 Route Table
resource "aws_route_table" "dev-vpc-public-route-table" {
  vpc_id = aws_vpc.dev-vpc.id
  tags = {
    "Name" = "dev-vpc-public-route-table"
  }

}

#resource-5 Create Route in Route Table for Internet Access
resource "aws_route" "public-route" {
  route_table_id         = aws_route_table.dev-vpc-public-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.dev-vpc-igw.id


}

#resource-6 Associate the Route Table with the Subnet
resource "aws_route_table_association" "route-table-subnet-association" {
  subnet_id      = aws_subnet.dev-vpc-public-subnet.id
  route_table_id = aws_route_table.dev-vpc-public-route-table.id


}

#resource-7 create security group
resource "aws_security_group" "security-group-1" {
  name        = "dev-vpc-default-sg"
  description = "security group for web server"
  vpc_id      = aws_vpc.dev-vpc.id


  ingress {
    description = "Allow port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }


}
