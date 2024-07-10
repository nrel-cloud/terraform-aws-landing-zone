locals {
  shared_subnet_filter_location01 = [for name in var.shared_subnets_names : "*${name}*" if can(regex(".*${replace(var.location01, "-", "")}.*", name))]
  shared_subnet_filter_location02 = [for name in var.shared_subnets_names : "*${name}*" if can(regex(".*${replace(var.location02, "-", "")}.*", name))]
  shared_subnet_filter_location03 = [for name in var.shared_subnets_names : "*${name}*" if can(regex(".*${replace(var.location03, "-", "")}.*", name))]
  shared_subnet_filter_location04 = [for name in var.shared_subnets_names : "*${name}*" if can(regex(".*${replace(var.location04, "-", "")}.*", name))]
}

data "aws_subnet" "subnets_shared_location01" {
  provider = aws.shared_account_location01
  count    = length(local.shared_subnet_filter_location01)
  filter {
    name   = "tag:Name"
    values = toset(local.shared_subnet_filter_location01)
  }
}

data "aws_subnet" "subnets_shared_location02" {
  provider = aws.shared_account_location02
  count    = length(local.shared_subnet_filter_location02)
  filter {
    name   = "tag:Name"
    values = toset(local.shared_subnet_filter_location02)
  }
}

data "aws_subnet" "subnets_shared_location03" {
  provider = aws.shared_account_location03
  count    = length(local.shared_subnet_filter_location03)
  filter {
    name   = "tag:Name"
    values = toset(local.shared_subnet_filter_location03)
  }
}

data "aws_subnet" "subnets_shared_location04" {
  provider = aws.shared_account_location04
  count    = length(local.shared_subnet_filter_location04)
  filter {
    name   = "tag:Name"
    values = toset(local.shared_subnet_filter_location04)
  }
}
