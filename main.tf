provider "aws" {
  alias = "hubaccount"
  region = var.location01  # Modify this to your preferred region
  profile = var.profile

    assume_role {
    # The role ARN within Account B to AssumeRole into.
    role_arn    = join(":",["arn:aws:iam:",var.hubaccountid,"role/NREL-TerraformRole"])

              }

  }

provider "aws" {
  alias = "spokeaccount"
  region = var.location01 # Modify this to your preferred region
  profile = var.profile

  assume_role {
    # The role ARN within Account B to AssumeRole into.
    role_arn    = join(":",["arn:aws:iam:",var.accountid,"role/NREL-TerraformRole"])

              }
                }