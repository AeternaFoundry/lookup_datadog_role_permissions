data "datadog_role_permissions" "role_permissions_lookup" {
  for_each = var.role_permissions_lookup

  role_id = each.value.role_id
}

