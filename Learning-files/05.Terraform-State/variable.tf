variable "ec2_count" {
  description = "ec2 instance count"
  type        = number
  default     = 2
}
variable "aws_region" {
  description = "AWS region name"
  type        = string
  default     = "us-east-1"
}
variable "ec2_instance_type" {
  description = "ec2 instance type"
  #type        = string
  type = map(string)
  default = {
    "dev-app"  = "t2.nano"
    "uat-app"  = "t2.micro"
    "prod-app" = "t3.macro"
  }
}
variable "ec2_tags" {
  description = "ec2 tags"
  type        = map(string)
  default = {
    Name       = "webserver"
    Tier       = "web-dept"
    Dept       = "IT"
    Owner      = "CTO"
    CostCenter = "Global"
  }
}
