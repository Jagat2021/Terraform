variable "aws_region" {
  description = "AWS region selection"
  type        = string
  default     = "us-east-1"

}

variable "ec2_count" {
  description = "ec2 count"
  type        = string
  default     = "3"
}

variable "ec2_ami_id" {
  description = "AMI id for ec2 instance"
  type        = string
  default     = "ami-033b95fb8079dc481"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}
