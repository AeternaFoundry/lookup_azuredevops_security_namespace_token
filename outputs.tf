output "security_namespace_token_lookup_id" {
  description = "Map of id values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.id }
}
output "security_namespace_token_lookup_identifiers" {
  description = "Map of identifiers values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.identifiers }
}
output "security_namespace_token_lookup_namespace_id" {
  description = "Map of namespace_id values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.namespace_id }
}
output "security_namespace_token_lookup_namespace_name" {
  description = "Map of namespace_name values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.namespace_name }
}
output "security_namespace_token_lookup_optional_identifiers" {
  description = "Map of optional_identifiers values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.optional_identifiers }
}
output "security_namespace_token_lookup_required_identifiers" {
  description = "Map of required_identifiers values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.required_identifiers }
}
output "security_namespace_token_lookup_return_identifier_info" {
  description = "Map of return_identifier_info values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.return_identifier_info }
}
output "security_namespace_token_lookup_token" {
  description = "Map of token values across all security_namespace_token_lookup, keyed the same as var.security_namespace_token_lookup"
  value       = { for k, v in data.azuredevops_security_namespace_token.security_namespace_token_lookup : k => v.token }
}

