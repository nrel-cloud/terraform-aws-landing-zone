resource "aws_iam_policy" "NREL-ReaderAccessAxonius" {
  provider    = aws.spoke_account_location01
  name        = "NREL-ReaderAccessAxonius"
  description = "Adapter Fetch Permissions per Axonius documentation"
  policy      = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
            "apigateway:GET",
            "acm:DescribeCertificate",
            "acm:ListCertificates",
            "appstream:DescribeFleets",
            "appstream:DescribeStacks",
            "appstream:DescribeUsers",
            "appstream:DescribeUserStackAssociations",
            "appstream:ListAssociatedFleets",
            "autoscaling:DescribeAutoScalingGroups",
            "autoscaling:DescribeAutoScalingInstances",
            "autoscaling:DescribePolicies",
            "backup:ListBackupPlans",
            "backup:ListBackupVaults",
            "cloudfront:GetDistribution",
            "cloudfront:ListDistributions",
            "dynamodb:DescribeGlobalTable",
            "dynamodb:DescribeGlobalTableSettings",
            "dynamodb:DescribeTable",
            "dynamodb:ListGlobalTables",
            "dynamodb:ListTables",
            "ec2:DescribeAddresses",
            "ec2:DescribeFlowLogs",
            "ec2:DescribeImages",
            "ec2:DescribeInstances",
            "ec2:DescribeInternetGateways",
            "ec2:DescribeNatGateways",
            "ec2:DescribeRouteTables",
            "ec2:DescribeSecurityGroups",
            "ec2:DescribeSnapshotAttribute",
            "ec2:DescribeSnapshots",
            "ec2:DescribeSubnets",
            "ec2:DescribeTags",
            "ec2:DescribeVolumes",
            "ec2:DescribeVpcPeeringConnections",
            "ec2:DescribeVpcs",
            "ecr:DescribeImages",
            "ecr:DescribeRegistry",
            "ecr:DescribeRepositories",
            "ecr-public:DescribeImages",
            "ecr-public:DescribeRegistries",
            "ecr-public:DescribeRepositories",
            "ecs:DescribeClusters",
            "ecs:DescribeContainerInstances",
            "ecs:DescribeServices",
            "ecs:DescribeTasks",
            "ecs:ListClusters",
            "ecs:ListContainerInstances",
            "ecs:ListServices",
            "ecs:ListTagsForResource",
            "ecs:ListTasks",
            "eks:DescribeCluster",
            "eks:ListClusters",
            "elasticache:DescribeCacheClusters",
            "elasticloadbalancing:DescribeListeners",
            "elasticloadbalancing:DescribeLoadBalancerPolicies",
            "elasticloadbalancing:DescribeLoadBalancers",
            "elasticloadbalancing:DescribeSSLPolicies",
            "elasticloadbalancing:DescribeTargetGroups",
            "elasticloadbalancing:DescribeTargetHealth",
            "es:DescribeElasticsearchDomain",
            "es:ListDomainNames",
            "fsx:DescribeFileSystems",
            "globalaccelerator:ListAccelerators",
            "globalaccelerator:ListCustomRoutingAccelerators",
            "glue:GetDatabases",
            "guardduty:GetDetector",
            "guardduty:GetFilter",
            "guardduty:GetFindings",
            "guardduty:GetMembers",
            "guardduty:ListDetectors",
            "guardduty:ListFilters",
            "guardduty:ListFindings",
            "guardduty:ListMembers",
            "iam:GenerateCredentialReport",
            "iam:GenerateServiceLastAccessedDetails",
            "iam:GetAccessKeyLastUsed",
            "iam:GetAccountPasswordPolicy",
            "iam:GetAccountSummary",
            "iam:GetCredentialReport",
            "iam:GetLoginProfile",
            "iam:GetPolicy",
            "iam:GetPolicyVersion",
            "iam:GetRole",
            "iam:GetRolePolicy",
            "iam:GetServiceLastAccessedDetails",
            "iam:GetUser",
            "iam:GetUserPolicy",
            "iam:ListAccessKeys",
            "iam:ListAccountAliases",
            "iam:ListAttachedGroupPolicies",
            "iam:ListAttachedRolePolicies",
            "iam:ListAttachedUserPolicies",
            "iam:ListEntitiesForPolicy",
            "iam:ListGroups",
            "iam:ListGroupsForUser",
            "iam:ListInstanceProfilesForRole",
            "iam:ListMFADevices",
            "iam:ListPolicies",
            "iam:ListRolePolicies",
            "iam:ListRoles",
            "iam:ListUserPolicies",
            "iam:ListUsers",
            "iam:ListUserTags",
            "iam:ListVirtualMFADevices",
            "inspector:DescribeFindings",
            "inspector:ListFindings",
            "inspector2:ListFindings",
            "inspector2:ListMembers",
            "lambda:GetFunctionUrlConfig",
            "lambda:GetPolicy",
            "lambda:ListFunctions",
            "lambda:ListTags",
            "macie2:GetFindings",
            "macie2:ListFindings",
            "macie2:ListMembers",
            "organizations:DescribeAccount",
            "organizations:DescribeEffectivePolicy",
            "organizations:DescribeOrganization",
            "organizations:DescribePolicy",
            "organizations:ListAccounts",
            "organizations:ListPoliciesForTarget",
            "organizations:ListTagsForResource",
            "rds:DescribeDBClusters",
            "rds:DescribeDBInstances",
            "rds:DescribeOptionGroups",
            "route53:ListHostedZones",
            "route53:ListResourceRecordSets",
            "route53domains:GetDomainDetail",
            "route53domains:ListDomains",
            "s3:GetAccountPublicAccessBlock",
            "s3:GetBucketAcl",
            "s3:GetBucketLocation",
            "s3:GetBucketLogging",
            "s3:GetBucketPolicy",
            "s3:GetBucketPolicyStatus",
            "s3:GetBucketPublicAccessBlock",
            "s3:GetBucketTagging",
            "s3:GetEncryptionConfiguration",
            "s3:ListAllMyBuckets",
            "s3:ListBucket",
            "secretsmanager:GetResourcePolicy",
            "secretsmanager:ListSecrets",
            "securityhub:DescribeHub",
            "securityhub:GetFindings",
            "securityhub:ListMembers",
            "securityhub:ListTagsForResource",
            "sns:ListSubscriptionsByTopic",
            "ssm:DescribeAvailablePatches",
            "ssm:DescribeInstanceInformation",
            "ssm:DescribeInstancePatches",
            "ssm:DescribePatchGroups",
            "ssm:GetInventorySchema",
            "ssm:ListInventoryEntries",
            "ssm:ListResourceComplianceSummaries",
            "ssm:ListTagsForResource",
            "waf:GetWebACL",
            "waf:ListWebACLs",
            "waf-regional:GetWebACL",
            "waf-regional:GetWebACLForResource",
            "waf-regional:ListWebACLs",
            "wafv2:GetWebACL",
            "wafv2:GetWebACLForResource",
            "wafv2:ListWebACLs",
            "workspaces:DescribeTags",
            "workspaces:DescribeWorkspaceDirectories",
            "workspaces:DescribeWorkspaces",
            "workspaces:DescribeWorkspacesConnectionStatus",
            "cloudtrail:DescribeTrails",
            "route53resolver:ListResolverRules",
            "dynamodb:ListTagsOfResource",
            "elasticloadbalancing:DescribeTags",
            "es:DescribeElasticsearchDomains",
            "cloudwatch:GetMetricStatistics",
            "cloudwatch:DescribeAlarms"
        ],
        "Effect": "Allow",
        "Resource": "*",
        "Sid": "AxoniusFullLeastAccess"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "roleattachment01" {
    provider = aws.spoke_account_location01
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"  # ARN for AdministratorAccess policy
    role      = aws_iam_role.role01.name
}

resource "aws_iam_role_policy_attachment" "roleattachment02" {
    provider = aws.spoke_account_location01
    policy_arn = "arn:aws:iam::${var.spoke_account_id}:policy/NREL-ReaderAccessAxonius"  # ARN for NREL-ReaderAccessAxonius policy
    role      = aws_iam_role.role02.name
}