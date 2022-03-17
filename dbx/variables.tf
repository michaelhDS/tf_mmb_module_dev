
locals {
  display_name                            = [for ni in var.user_groups : ni.display_name]
  display_name_allow_cluster_create       = { for ni in var.user_groups : ni.display_name => ni.allow_cluster_create }
  display_name_allow_instance_pool_create = { for ni in var.user_groups : ni.display_name => ni.allow_instance_pool_create }

  user_email                = [for ni in var.users : ni.user_email]
  user_email_solution_group = { for ni in var.users : ni.user_email => ni.solution_group }
}


# variable "user_groups" {
#   type = list(object({
#     display_name               = string
#     allow_cluster_create       = bool
#     allow_instance_pool_create = bool
#   }))

#   default = []
# }

# variable "clusters" {
#   type = list(object({
#     cluster_name     = string
#     min_workers      = number
#     max_workers      = number
#     permission_level = string
#     user_group       = string
#   }))
#   default = []
# }

# variable "secret_scopes" {
#   type = list(object({
#     name = string
#   }))
#   default = []
# }

# variable "users" {
#   type = list(object({
#     user_email     = string
#     solution_group = string
#   }))
#   default = []
# }








# variable "databricks_project" {
#   description = "map of Solution Groups to configuration"
#   type        = map(any)
#   default = {

#     env = {

#       dev = {
#         host  = "https://dbc-8c8038b8-0e28.cloud.databricks.com",
#         token = "dapi41cd7e0b12ed6d43e9183d62513335c6",

#         solution_groups = {

#           SG1 = {
#             cluster_name               = "SG1",
#             min_workers                = 1,
#             max_workers                = 2,
#             permission_level           = "CAN_ATTACH_TO",
#             user_group_name            = "SG1",
#             secret_scope               = "SG1",
#             allow_cluster_create       = true,
#             allow_instance_pool_create = true
#
          },

#           SG2 = {
#             cluster_name               = "SG2",
#             min_workers                = 2,
#             max_workers                = 3,
#             permission_level           = "CAN_ATTACH_TO",
#             user_group_name            = "SG1",
#             secret_scope               = "SG1",
#             allow_cluster_create       = false,
#             allow_instance_pool_create = false
#
          }
#
        }
#
      }

#
    }



#
  }
#
}


# variable "user_groups_display_name" {
#   description = "List of user groups you want to create"
#   type        = map(any)
#   default = {
#     "display_name"               = var.display_name,
#     "allow_cluster_create"       = var.allow_cluster_create,
#     "allow_instance_pool_create" = var.allow_instance_pool_create

#
  }
#
}




# variable "databricks_prod" {
#   description = "map of Solution Groups to configuration"
#   type        = map(any)
#   default = {
#     SG1 = {
#       cluster_name               = "SG1",
#       min_workers                = 1,
#       max_workers                = 2,
#       permission_level           = "CAN_ATTACH_TO",
#       user_group_name            = "SG1",
#       allow_cluster_create       = false
#       allow_instance_pool_create = false

#
    },
#     SG2 = {
#       cluster_name               = "SG2",
#       min_workers                = 2,
#       max_workers                = 3,
#       permission_level           = "CAN_ATTACH_TO",
#       user_group_name            = "SG1",
#       allow_cluster_create       = false
#       allow_instance_pool_create = false

#
    }
#
  }
#
}