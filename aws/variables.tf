variable "buckets_name" {
  type    = string
  default = "mmb-test1-mh"
}

variable "arn" {
  type    = list(string)
  default = ["arn:aws:s3:::mmb-test1-mh", "arn:aws:s3:::mmb-test1-mh/*"]
}

variable "actions" {
  type    = list(string)
  default = ["s3:*"]
}

variable "user" {
  type    = list(string)
  default = ["arn:aws:iam::554025156005:user/snowboardsteam"]
}





variable "s3_bucket" {
  type = list(object({
    bucket_name = string
    bucket_arn  = string
    sid         = string
    arn_iam     = string
    path        = bool
    actions     = list(string)
  }))
  default = []
}

locals {
  buckets_name            = [for i in var.s3_bucket : i.bucket_name]
  buckets_name_bucket_arn = { for i in var.s3_bucket : i.bucket_name => i.bucket_arn }
  buckets_name_arn_iam    = { for i in var.s3_bucket : i.bucket_name => i.arn_iam }
  buckets_name_sid        = { for i in var.s3_bucket : i.bucket_name => i.sid }
  buckets_name_path       = { for i in var.s3_bucket : i.bucket_name => i.path }
  buckets_name_actions    = { for i in var.s3_bucket : i.bucket_name => i.actions }
}

