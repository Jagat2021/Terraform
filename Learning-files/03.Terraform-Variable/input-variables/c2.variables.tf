variable "aws_region" {
  description = "AWS region selection"
  type        = string

}

variable "ec2_count" {
  description = "ec2 count"
  type        = string
}

variable "ec2_ami_id" {
  description = "AMI id for ec2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}
