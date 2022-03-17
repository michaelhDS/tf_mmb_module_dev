#Bucket1 policy
resource "aws_s3_bucket_policy" "bucket_policy" {

  bucket = var.buckets_name
  policy = data.aws_iam_policy_document.bucket_policy.json

    # policy = jsonencode(
    #   {
    #     "Version" : "2012-10-17",
    #     "Statement" : [
    #       {
    #         "Sid" : "${var.solution_groups.snowboardsteam}Policy1",
    #         "Effect" : "Allow",
    #         "Principal" : { "AWS" : ["arn:aws:iam::${var.solution_groups.snowboardsteamid}:user/${var.solution_groups.snowboardsteam}",
    #         "arn:aws:iam::${var.solution_groups.snowboardsteamid}:role/${var.solution_groups.snowboardsteamRole}"] },
    #         "Action" : "s3:*",
    #         "Resource" : [
    #           "arn:aws:s3:::${var.buckets_names.bucket1}",
    #           "arn:aws:s3:::${var.buckets_names.bucket1}/*"
    #         ]
    #       },
    #       {
    #         "Sid" : "${var.solution_groups.lyzariteam}Policy1",
    #         "Effect" : "Allow",
    #         "Principal" : { "AWS" : ["arn:aws:iam::${var.solution_groups.lezariteamid}:user/${var.solution_groups.lyzariteam}",
    #         "arn:aws:iam::${var.solution_groups.lezariteamid}:role/${var.solution_groups.lyzariteamRole}"] },
    #         "Action" : "s3:*",
    #         "Resource" : [
    #           "arn:aws:s3:::${var.buckets_names.bucket1}/${var.solution_groups.lyzarihomedir}",
    #           "arn:aws:s3:::${var.buckets_names.bucket1}/${var.solution_groups.lyzarihomedir}/*"
    #         ]
    #       }
    #     ]
    # })
}


data "aws_iam_policy_document" "bucket_policy" {

  statement {
    sid = "mm1"
    principals {
      type        = "AWS"
      identifiers = var.user
    }
    actions   = var.actions
    resources = var.arn
    effect    = "Allow"
  }


  #   statement {
  #     principals {
  #       type        = "AWS"
  #       identifiers = ["123456789012"]
  #     }

  #     actions = [
  #       "s3:GetObject",
  #       "s3:ListBucket",
  #     ]

  #     resources = [
  #       aws_s3_bucket.example.arn,
  #       "${aws_s3_bucket.example.arn}/*",
  #     ]
  #   }
}


# output "bucket_out" {
#   value = aws_s3_bucket_policy.bucket1_policy.policy

# }
# ##Bucket1 lyzari home dir
# resource "aws_s3_bucket_object" "base_folder_lyzari" {
#     bucket  = "${var.buckets_names.bucket1}"
#     acl     = "private"
#     key     =  "${var.solution_groups.lyzarihomedir}/"
#     content_type = "application/x-directory"
# }
