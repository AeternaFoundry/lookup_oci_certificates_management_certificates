variable "certificates_management_certificates_lookup" {
  description = <<EOT
Map of certificates_management_certificates_lookup, attributes below
Optional:
    - certificate_id
    - compartment_id
    - issuer_certificate_authority_id
    - name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    certificate_id                  = optional(string)
    compartment_id                  = optional(string)
    issuer_certificate_authority_id = optional(string)
    name                            = optional(string)
    state                           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

