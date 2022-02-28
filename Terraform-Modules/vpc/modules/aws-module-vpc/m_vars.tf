### VPC Configuration ###

variable "vpc_cidr_block" {
  type = string
}

variable "instance_tenancy" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "enable_dns_hostnames" {
  type = bool
}

### Subnet Creation - piblic,web,app,db, ###

variable "public-subnet" {
  type = string
}
variable "public-subnet-tags" {
  type = map(string)
}

variable "web-subnet-private" {
  type = string
}
variable "web-subnet-tags" {
  type = map(string)
}

variable "app-subnet-private" {
  type = string
}
variable "app-subnet-tags" {
  type = map(string)
}

variable "db-subnet-private" {
  type = string
}
variable "db-subnet-tags" {
  type = map(string)
}

# Availability Zones
variable "az_public" {
  type = string
}
variable "az_web" {
  type = string
}
variable "az_app" {
  type = string
}
variable "az_db" {
  type = string
}


