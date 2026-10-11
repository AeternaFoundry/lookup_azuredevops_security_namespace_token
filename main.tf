data "azuredevops_security_namespace_token" "security_namespace_token_lookup" {
  for_each = var.security_namespace_token_lookup

  identifiers            = each.value.identifiers
  namespace_id           = each.value.namespace_id
  namespace_name         = each.value.namespace_name
  return_identifier_info = each.value.return_identifier_info

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

