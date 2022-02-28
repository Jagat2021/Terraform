
provider "aws" {
  region  = local.region
  profile = "default"
}

locals {
  region = "us-east-1"
}


# THE ARGUMENTS NAME MUST BE SIMILAR TO VARIABLE NAME AVAILABLE IN MODULE'S VARIABLE FILE (m_var.tf)

module "aws_module_vpc" {
  source           = "./modules/aws_module_vpc"
  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy
  tags             = var.vpc_tags
}
