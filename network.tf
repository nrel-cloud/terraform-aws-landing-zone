data "aws_vpc" "vpc01" {
  provider = aws.hubaccount
  filter {
    name   = "tag:Name"
    values = ["*infra-001*"]  
  }
}

data "aws_subnet" "sharedsubnets01" {
  provider = aws.hubaccount
  for_each = toset(var.sharedsubnetscidrs)
  vpc_id   = data.aws_vpc.vpc01.id
  cidr_block = each.key
}

resource "aws_ec2_tag" "spokesubnettags01" {
  provider = aws.spokeaccount
  for_each = data.aws_subnet.sharedsubnets01
  resource_id = each.value["id"]
  key = "Name"
  value = each.value.tags["Name"]
  depends_on = [ aws_ram_resource_association.ramshareassociation01]
  }

