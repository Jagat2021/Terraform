output "vpc_id" {
  value = data.aws_vpc.data_selected.id
}

output "subnet_ids" {
  value = [for s in data.aws_subnet.data_example : s.cidr_block]
}
