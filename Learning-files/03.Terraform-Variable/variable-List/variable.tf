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
variable "ami_id" {
  description = "AMI id of ec2"
  type        = string
  default     = "ami-033b95fb8079dc481"
}
variable "ec2_instance_type" {
  description = "ec2 instance type"
  #type        = string
  type    = list(string)
  default = ["t2.micro", "t3.micro", "t2.large"]
}
