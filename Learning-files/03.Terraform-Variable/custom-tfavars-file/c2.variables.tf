variable "aws_region" {
  description = "AWS regions"
  type        = string
  default     = "us-west-1"
}

variable "ec2_count" {
  description = "ec2 count"
  type        = number
  default     = 1
}

variable "ec2_instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "select the latest ami id"
  type        = string
  default     = "ami-033b95fb8079dc481"
}
