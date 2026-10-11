variable "license_manager_configurations" {
  description = <<EOT
Map of license_manager_configurations, attributes below
Required:
    - compartment_id
    - email_ids
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    email_ids      = list(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

