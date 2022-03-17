variable "user_groups" {
  type = list(object({
    display_name               = string
    allow_cluster_create       = bool
    allow_instance_pool_create = bool
  }))

  default = []
}

variable "clusters" {
  type = list(object({
    cluster_name     = string
    min_workers      = number
    max_workers      = number
    permission_level = string
    user_group       = string

  }))
  default = []
}

variable "secret_scopes" {
  type = list(object({
    name = string
  }))
  default = []
}

variable "users" {
  type = list(object({
    user_email     = string
    solution_group = string

  }))
  default = []
}
