variable "title" {
  type = string
}

variable "short_prefix" {
  type = string
}

variable "long_prefix" {
  type = string
}

variable "role" {
  type = string
}

variable "read_roles" {
  type = list(string)
}

variable "write_roles" {
  type = list(string)
}

variable "tags" {
  type = map(any)
}

variable "administrator_roles" {
  type = list(string)
}

variable "retention_in_days" {
  type = number
}

variable "key_rotation_days" {
  type    = number
  default = null
}

variable "kms" {
  type    = any
  default = null
}
