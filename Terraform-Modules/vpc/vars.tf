variable "cidr_block" {
  type    = string
  default = "192.168.0.0/16"
}

variable "instance_tenancy" {
  type    = string
  default = "default"
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "vpc_tags" {
  type = map(string)
  default = {
    Name       = "devVPC"
    Dept       = "dev"
    CostCenter = "019283745"
  }
}

# Subnet Creation
variable "vpc-public-subnet" {
  type    = string
  default = "192.168.1.0/26"
}
variable "vpc-public-subnet-tags" {
  type    = map(string)
  default = {}
}

variable "vpc-web-subnet-private" {
  type    = string
  default = "192.168.1.64/26"
}
variable "vpc-web-subnet-tags" {
  type    = map(string)
  default = {}
}

variable "vpc-app-subnet-private" {
  type    = string
  default = "192.168.1.128/26"
}
variable "vpc-app-subnet-tags" {
  type    = map(string)
  default = {}
}

variable "vpc-db-subnet-private" {
  type    = string
  default = "192.168.1.192/26"
}
variable "vpc-db-subnet-tags" {
  type    = map(string)
  default = {}
}

# Availability Zones
variable "az_public" {
  type    = string
  default = "us-east-1a"
}
variable "az_web" {
  type    = string
  default = "us-east-1b"
}
variable "az_app" {
  type    = string
  default = "us-east-1c"
}
variable "az_db" {
  type    = string
  default = "us-east-1d"
}
