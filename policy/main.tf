# # module "secret_rotate" {
# #   count             = var.key_rotation_days != null ? 1 : 0
# #   source            = "../secret-rotate"
# #   short_prefix      = "${var.short_prefix}-api-key"
# #   long_prefix       = "${var.long_prefix}-api-key"
# #   role              = var.role
# #   retention_in_days = var.retention_in_days
# #   tags = merge(
# #     var.tags,
# #     {
# #       "Description" = "API Key Rotation Lambda for ${var.title}"
# #     }
# #   )
# # }

# # module "secret" {
# #   source = "../secret/"

# #   short_prefix            = "${var.short_prefix}-api-key"
# #   long_prefix             = "${var.long_prefix}-api-key"
# #   rotate                  = var.key_rotation_days != null
# #   lambda_key_rotation_arn = var.key_rotation_days != null ? module.secret_rotate[0].arn : null
# #   write_roles             = var.write_roles
# #   read_roles              = var.read_roles
# #   administrator_roles     = var.administrator_roles
# #   key_rotation_days       = var.key_rotation_days
# #   # tags = merge(
# #   #   var.tags,
# #   #   {
# #   #     "Description" = "API Key for ${var.title}"
# #   #   }
# #   # )
# #   kms = var.kms
# # }
