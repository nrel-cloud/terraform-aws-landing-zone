provider "aws" {
  alias = "shared_account_location01"
  region = var.location01  # Modify this to your preferred region

    assume_role {
    # The role ARN within Account B to AssumeRole into.
    role_arn    = join(":",["arn:aws:iam:",var.shared_account_id,"role/NREL-TerraformRole"])

              }

}
provider "aws" {
  alias = "shared_account_location02"
  region = var.location02  # Modify this to your preferred region

    assume_role {
    # The role ARN within Account B to AssumeRole into.
    role_arn    = join(":",["arn:aws:iam:",var.shared_account_id,"role/NREL-TerraformRole"])

              }

}
provider "aws" {
  alias = "shared_account_location03"
  region = var.location03  # Modify this to your preferred region

    assume_role {
    # The role ARN within Account B to AssumeRole into.
    role_arn    = join(":",["arn:aws:iam:",var.shared_account_id,"role/NREL-TerraformRole"])

              }

}
provider "aws" {
  alias = "shared_account_location04"
  region = var.location04  # Modify this to your preferred region

    assume_role {
    # The role ARN within Account B to AssumeRole into.
    role_arn    = join(":",["arn:aws:iam:",var.shared_account_id,"role/NREL-TerraformRole"])

              }

}

provider "aws" {
  alias = "spoke_account_location01"
  region = var.location01 # Modify this to your preferred region

  assume_role {
    # The role ARN within Account B to AssumeRole into.
    role_arn    = join(":",["arn:aws:iam:",var.spoke_account_id,"role/NREL-TerraformRole"])

              }
                }

