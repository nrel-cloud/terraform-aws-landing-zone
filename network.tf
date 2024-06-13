/*data "aws_vpc" "vpc01" {
  provider = aws.shared_account_location01
  filter {
    name   = "tag:Name"
    values = ["*general*"]  
  }
}
*/

data "aws_subnet" "subnets_shared_location01" {
  provider = aws.shared_account_location01
  for_each = var.shared_subnets_names
  filter {
    name   = "tag:Name"
    values = [each.value]
  }
}
