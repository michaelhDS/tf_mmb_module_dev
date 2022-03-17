module "dbx" {

  source = "./dbx"

  user_groups   = var.user_groups
  clusters      = var.clusters
  users         = var.users
  secret_scopes = var.secret_scopes

}
