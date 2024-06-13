
resource "aws_ram_resource_share" "ramshare01" {
  provider = aws.shared_account_location01
  name = join("-",["ramshare",var.shared_account_id,"to",var.spoke_account_id])
  allow_external_principals = false
}


resource "aws_ram_resource_association" "ramshareassociation01" {
  provider           = aws.shared_account_location01
  for_each           = data.aws_subnet.subnets_shared_location01
  resource_arn       = each.value["arn"]
  resource_share_arn = aws_ram_resource_share.ramshare01.arn

  depends_on = [ data.aws_subnet.subnets_shared_location01 ]
}

resource "aws_ram_principal_association" "ramprincipalassociation01" {
  provider = aws.shared_account_location01
  principal          = var.spoke_account_id
  resource_share_arn = aws_ram_resource_share.ramshare01.arn
}

