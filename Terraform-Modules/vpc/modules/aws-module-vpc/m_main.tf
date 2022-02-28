# VPC creation resource
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = var.instance_tenancy
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = var.tags
}

#Subnet creation resource

resource "aws_subnet" "public-subnet" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public-subnet
  map_public_ip_on_launch = true
  availability_zone       = var.az_public
  tags                    = var.public-subnet-tags
}

resource "aws_subnet" "web-subnet-private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.web-subnet-private
  availability_zone = var.az_web
  tags              = var.web-subnet-tags
}

resource "aws_subnet" "app-subnet-private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.app-subnet-private
  availability_zone = var.az_app
  tags              = var.app-subnet-tags
}

resource "aws_subnet" "db-subnet-private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.db-subnet-private
  availability_zone = var.az_db
  tags              = var.db-subnet-tags
}
