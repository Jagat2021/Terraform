terraform {
  required_version = "~> 1.1.5"
  required_providers {
    aws = {
      sousource = "hahashicorp/aws"
      version   = "~> 3.74.1"
    }
  }
}
