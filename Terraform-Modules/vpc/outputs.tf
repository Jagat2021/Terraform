output "vpc_id" {
  value = module.aws-module-vpc.vpc_id
}

output "public-subnet-ids" {
  value = module.aws-module-vpc.public-subnet-ids
}

output "web-subnet-ids" {
  value = module.aws-module-vpc.web-subnet-ids
}

output "app-subnet-ids" {
  value = module.aws-module-vpc.app-subnet-ids
}

output "db-subnet-ids" {
  value = module.aws-module-vpc.db-subnet-ids
}


