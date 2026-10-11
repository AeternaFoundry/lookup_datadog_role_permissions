variable "role_permissions_lookup" {
  description = <<EOT
Map of role_permissions_lookup, attributes below
Required:
    - role_id
EOT

  type = map(object({
    role_id = string
  }))
}

