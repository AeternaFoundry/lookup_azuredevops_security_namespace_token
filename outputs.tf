output "security_namespace_token_lookup_id" {
  description = "Map of id values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_namespace_token_lookup_identifiers" {
  description = "Map of identifiers values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup except keys with no identifiers are omitted"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.identifiers if v.identifiers != null && length(v.identifiers) > 0 }
}
output "security_namespace_token_lookup_namespace_id" {
  description = "Map of namespace_id values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup except keys with no namespace_id are omitted"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.namespace_id if v.namespace_id != null && length(v.namespace_id) > 0 }
}
output "security_namespace_token_lookup_namespace_name" {
  description = "Map of namespace_name values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup except keys with no namespace_name are omitted"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.namespace_name if v.namespace_name != null && length(v.namespace_name) > 0 }
}
output "security_namespace_token_lookup_optional_identifiers" {
  description = "Map of optional_identifiers values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup except keys with no optional_identifiers are omitted"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.optional_identifiers if v.optional_identifiers != null && length(v.optional_identifiers) > 0 }
}
output "security_namespace_token_lookup_required_identifiers" {
  description = "Map of required_identifiers values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup except keys with no required_identifiers are omitted"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.required_identifiers if v.required_identifiers != null && length(v.required_identifiers) > 0 }
}
output "security_namespace_token_lookup_return_identifier_info" {
  description = "Map of return_identifier_info values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup except keys with no return_identifier_info are omitted"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.return_identifier_info if v.return_identifier_info != null }
}
output "security_namespace_token_lookup_token" {
  description = "Map of token values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup except keys with no token are omitted"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.token if v.token != null && length(v.token) > 0 }
}

