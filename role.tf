resource "aws_iam_role" "role01" {
 provider = aws.spokeaccount
  name = "NREL-AnsibleAssumeRole"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          "AWS": "arn:aws:iam::313201327585:user/svc-ansible"
        }
        Action = "sts:AssumeRole",
      }
    ]
  })
}
resource "aws_iam_role" "role02" {
 provider = aws.spokeaccount
  name = "NREL-ReaderRoleAxonius"
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
              "AWS": [
                "313201327585",
                "arn:aws:iam::313201327585:user/svc-axonius",
                "arn:aws:iam::313201327585:role/NREL-ReaderRoleAxonius",
                "arn:aws:iam::313201327585:role/NREL-AxoniusAdapter"
              ]
            },
            "Action": "sts:AssumeRole",
            "Condition": {}
        }
    ]
  })
}
