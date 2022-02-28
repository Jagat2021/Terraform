terraform {
  required_version = "~>1.1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.0.0"
    }
  }
  backend "s3" {
    bucket         = "jagat-100"
    key            = "terraform-lab/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-dynamo" # For state Locking
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"

}
