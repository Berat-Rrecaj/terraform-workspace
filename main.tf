module "user-training-module" {
   source  = "app.terraform.io/Berat-Rrecaj/module/lab"
  version = "1.0.1"
  # insert required variables here

  user_name   = "berat-user"
  policy_name = "berat-policy"
  policy_document = {
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*", "iam:GetAccountPasswordPolicy", "elasticloadbalancing:DescribeLoadBalancers"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
      {
        Action = [
          "iam:ChangePassword"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  }
}
