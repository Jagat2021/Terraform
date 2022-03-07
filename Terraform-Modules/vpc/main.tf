#locals config   --
locals {
  profile = "default"
  region  = "us-east-1"
}

provider "aws" {
  profile = local.profile
  region  = local.region
}

# VPC module
module "aws-module-vpc" {
  source = "./modules/aws-module-vpc"

  vpc_cidr_block       = var.cidr_block
  instance_tenancy     = var.instance_tenancy
  enable_dns_hostnames = var.enable_dns_hostnames
  tags                 = var.vpc_tags

  public-subnet = var.vpc-public-subnet
  az_public     = var.az_public
  public-subnet-tags = {
    Name = "public-subnet"
  }

  web-subnet-private = var.vpc-web-subnet-private
  az_web             = var.az_web
  web-subnet-tags = {
    Name = "web-subnet-private"
  }

  app-subnet-private = var.vpc-app-subnet-private
  az_app             = var.az_app
  app-subnet-tags = {
    Name = "app-subnet-private"
  }

  db-subnet-private = var.vpc-db-subnet-private
  az_db             = var.az_db
  db-subnet-tags = {
    Name = "db-subnet-private"
  }

}
