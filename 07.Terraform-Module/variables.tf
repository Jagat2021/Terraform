variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type    = string
  default = "default"
}

/*
variable "vpc_region" {
  type    = string
  default = "us-east-1"
}
*/
variable "vpc_tags" {
  type = map(string)
  default = {
    Name = "My-Terraform-vpc"
    Dept = "dev"
  }
}
