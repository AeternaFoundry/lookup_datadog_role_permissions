output "role_permissions_lookup_id" {
  description = "Map of id values across all role_permissions_lookup, keyed the same as var.role_permissions_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_role_permissions.role_permissions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "role_permissions_lookup_permissions" {
  description = "Map of permissions values across all role_permissions_lookup, keyed the same as var.role_permissions_lookup except keys with no permissions are omitted"
  value       = { for k, v in data.datadog_role_permissions.role_permissions_lookup : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "role_permissions_lookup_role_id" {
  description = "Map of role_id values across all role_permissions_lookup, keyed the same as var.role_permissions_lookup except keys with no role_id are omitted"
  value       = { for k, v in data.datadog_role_permissions.role_permissions_lookup : k => v.role_id if v.role_id != null && length(v.role_id) > 0 }
}

