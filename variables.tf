variable "security_namespace_token_lookup" {
  description = <<EOT
Map of security_namespace_token_lookup, attributes below
Optional:
    - identifiers
    - namespace_id
    - namespace_name
    - return_identifier_info
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    identifiers            = optional(map(string))
    namespace_id           = optional(string)
    namespace_name         = optional(string)
    return_identifier_info = optional(bool)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.security_namespace_token_lookup : (
        v.namespace_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.namespace_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_namespace_token_lookup : (
        v.namespace_name == null || (length(v.namespace_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
}

