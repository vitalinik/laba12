resource "aws_iam_policy" "cmtr_policy" {
  name        = "cmtr-5bf61784-iam-policy"
  path        = "/"
  description = "Imported IAM policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ec2:*",
          "s3:*"
        ]
        Resource = "*"
      }
    ]
  })
}