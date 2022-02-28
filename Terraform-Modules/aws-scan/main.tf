data "aws_vpc" "data_selected" {
  id = var.vpc_id
}

data "aws_subnets" "data_example" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

data "aws_subnet" "data_example" {
  for_each = toset(data.aws_subnets.data_example.ids)
  id       = each.value
}
