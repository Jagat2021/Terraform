variable "cidr_block" {
  description = "CIDR block"
  type        = string
}

variable "tags" {
  type = map(string)
}

variable "instance_tenancy" {
  type = string

}

# THESE MODULE VARIABLES NAME MUST BE INPUT AS ARGUMENTS IN MAIN.TF FILE
