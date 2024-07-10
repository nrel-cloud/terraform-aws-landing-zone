#share subnets in location01
resource "aws_ram_resource_share" "ram_share01_location01" {
  provider = aws.shared_account_location01
  name = join("-",["ramshare",var.shared_account_id,"to",var.spoke_account_id])
  allow_external_principals = false
}


resource "aws_ram_resource_association" "ram_share_association01_location01" {
  provider           = aws.shared_account_location01
  count              = length(data.aws_subnet.subnets_shared_location01)
  resource_arn       = data.aws_subnet.subnets_shared_location01[count.index].arn
  resource_share_arn = aws_ram_resource_share.ram_share01_location01.arn

  depends_on = [ data.aws_subnet.subnets_shared_location01 ]
}

resource "aws_ram_principal_association" "ram_principal_association01_location01" {
  provider            = aws.shared_account_location01
  principal          = var.spoke_account_id
  resource_share_arn = aws_ram_resource_share.ram_share01_location01.arn
}



#share subnets in location02

resource "aws_ram_resource_share" "ram_share01_location02" {
  provider = aws.shared_account_location02
  name = join("-",["ramshare",var.shared_account_id,"to",var.spoke_account_id])
  allow_external_principals = false
}


resource "aws_ram_resource_association" "ram_share_association01_location02" {
  provider           = aws.shared_account_location02
  count              = length(data.aws_subnet.subnets_shared_location02)
  resource_arn       = data.aws_subnet.subnets_shared_location02[count.index].arn
  resource_share_arn = aws_ram_resource_share.ram_share01_location02.arn

  depends_on = [ data.aws_subnet.subnets_shared_location02 ]
}

resource "aws_ram_principal_association" "ram_principal_association01_location02" {
  provider            = aws.shared_account_location02
  principal          = var.spoke_account_id
  resource_share_arn = aws_ram_resource_share.ram_share01_location02.arn
}



#share subnets in location03

resource "aws_ram_resource_share" "ram_share01_location03" {
  provider = aws.shared_account_location03
  name = join("-",["ramshare",var.shared_account_id,"to",var.spoke_account_id])
  allow_external_principals = false
}


resource "aws_ram_resource_association" "ram_share_association01_location03" {
  provider           = aws.shared_account_location03
  count              = length(data.aws_subnet.subnets_shared_location03)
  resource_arn       = data.aws_subnet.subnets_shared_location03[count.index].arn
  resource_share_arn = aws_ram_resource_share.ram_share01_location03.arn

  depends_on = [ data.aws_subnet.subnets_shared_location03 ]
}

resource "aws_ram_principal_association" "ram_principal_association01_location03" {
  provider            = aws.shared_account_location03
  principal          = var.spoke_account_id
  resource_share_arn = aws_ram_resource_share.ram_share01_location03.arn
}



#share subnets in location04

resource "aws_ram_resource_share" "ram_share01_location04" {
  provider = aws.shared_account_location04
  name = join("-",["ramshare",var.shared_account_id,"to",var.spoke_account_id])
  allow_external_principals = false
}


resource "aws_ram_resource_association" "ram_share_association01_location04" {
  provider           = aws.shared_account_location04
  count              = length(data.aws_subnet.subnets_shared_location04)
  resource_arn       = data.aws_subnet.subnets_shared_location04[count.index].arn
  resource_share_arn = aws_ram_resource_share.ram_share01_location04.arn

  depends_on = [ data.aws_subnet.subnets_shared_location04 ]
}

resource "aws_ram_principal_association" "ram_principal_association01_location04" {
  provider            = aws.shared_account_location04
  principal          = var.spoke_account_id
  resource_share_arn = aws_ram_resource_share.ram_share01_location04.arn
}



