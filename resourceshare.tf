
resource "aws_ram_resource_share" "ramshare01" {
  provider = aws.hubaccount
  name = join("-",["ramshare",var.hubaccountid,"to",var.accountid])
  allow_external_principals = false
}


resource "aws_ram_resource_association" "ramshareassociation01" {
  provider            = aws.hubaccount
  for_each           = data.aws_subnet.sharedsubnets01
  resource_arn       = each.value["arn"]
  resource_share_arn = aws_ram_resource_share.ramshare01.arn

  depends_on = [ data.aws_subnet.sharedsubnets01 ]
}

resource "aws_ram_principal_association" "ramprincipalassociation01" {
  provider = aws.hubaccount
  principal          = var.accountid
  resource_share_arn = aws_ram_resource_share.ramshare01.arn
}

