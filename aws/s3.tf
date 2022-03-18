#Bucket1 policy
#Bucket1 policy
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = var.buckets_name
  policy = data.aws_iam_policy_document.bucket_policy.json
}



data "aws_iam_policy_document" "bucket_policy" {

  statement {
    sid    = var
    effect = "Allow"

    resources = [
      "arn:aws:s3:::mmb-test1-mh/lyzar/*",
      "arn:aws:s3:::mmb-test1-mh/lyzar",
    ]

    actions = ["s3:*"]

    principals {
      type = "AWS"

      identifiers = [
        "arn:aws:iam::554025156005:role/lyzari-app",
        "arn:aws:iam::554025156005:user/lyzari",
      ]
    }
  }
}




# data "aws_iam_policy_document" "combined" {
#   source_policy_documents = [
#     data.aws_iam_policy_document.bucket_policy.json,
#     data.aws_iam_policy_document.original.json
#   ]
# }

# data "aws_iam_policy_document" "original" {
#   statement {
#     sid    = "origin-test"
#     effect = "Allow"

#     resources = [
#       "arn:aws:s3:::mmb-test1-mh/lyzar/*",
#       "arn:aws:s3:::mmb-test1-mh/lyzar",
#     ]

#     actions = ["s3:*"]

#     principals {
#       type = "AWS"

#       identifiers = [
#         "arn:aws:iam::554025156005:role/lyzari-app",
#         "arn:aws:iam::554025156005:user/lyzari",
#       ]
#     }
#   }
# }
