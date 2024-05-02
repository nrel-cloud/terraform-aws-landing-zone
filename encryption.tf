/*
# Get KMS key resource
data "aws_kms_key" "defaultmultiregionkey01" {
  provider = aws.hubaccount
  key_id = "mrk-9719672a8e074297a136e6e720cea005"

}

# Attach Key Policy to allow the target account to use the key
resource "aws_kms_key_policy" "example" {
  provider = aws.hubaccount
  key_id = data.aws_kms_key.defaultmultiregionkey01.id

  policy = jsonencode({
    Version = "2012-10-17",
    Id      = "key-policy",
    Statement = [
      {
        Sid       = "Enable IAM User Permissions",
        Effect    = "Allow",
        Principal = {
          AWS = "*"
        },
        Action    = "kms:*",
        Resource  = "*"
      },
      {
        Sid       = "Allow cross-account use for EBS encryption",
        Effect    = "Allow",
        Principal = {
          AWS = "arn:aws:iam::${var.accountid}:root"
        },
        Action    = ["kms:Encrypt", "kms:Decrypt"],
        Resource  = "*"
      }
    ]
  })
}

# Create Grant to allow cross-account access
resource "aws_kms_grant" "kmsgrant01" {
  provider = aws.hubaccount
  key_id          = data.aws_kms_key.defaultmultiregionkey01.id
  grantee_principal = "arn:aws:iam::${var.accountid}:root"
  operations      = ["Encrypt", "Decrypt"]
}
*/