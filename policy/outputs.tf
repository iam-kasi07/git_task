output "statements" {
  value = concat(
    module.api_key_secret_rotate_policy.statements,
    [
    ]
  )
}

# output "assume_statements" {
#   value = concat(
#     module.api_key_secret_rotate_policy.assume_statements,
#     [
#     ]
#   )
# }

# output "long_prefix" {
#   value = var.long_prefix
# }

output "short_prefix" {
  value = var.short_prefix
}
