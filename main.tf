module "dbx" {

  source = "./dbx"

  user_groups   = var.user_groups
  clusters      = var.clusters
  users         = var.users
  secret_scopes = var.secret_scopes

}

module "aws" {

  source = "./aws"

  s3_bucket = var.s3_bucket

}
