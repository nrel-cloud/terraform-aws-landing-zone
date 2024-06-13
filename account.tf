provider "aws" {
  alias = "shared_account_location01"
  region = var.location01  # Modify this to your preferred region

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

