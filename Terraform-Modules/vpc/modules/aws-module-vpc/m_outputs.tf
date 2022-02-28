output "vpc_id" {
  value = aws_vpc.main.id
}

output "public-subnet-ids" {
  value = aws_subnet.public-subnet.id
}

output "web-subnet-ids" {
  value = aws_subnet.web-subnet-private.id
}

output "app-subnet-ids" {
  value = aws_subnet.app-subnet-private.id
}

output "db-subnet-ids" {
  value = aws_subnet.db-subnet-private.id
}
