terraform {
  required_version = "~> 1.1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.74.1"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"

}

provider "aws" {
  region  = "us-east-2"
  profile = "default"
  alias   = "aws-us-west-1"

}
