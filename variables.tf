variable "fleet_apps_management_compliance_policy_rules" {
  description = <<EOT
Map of fleet_apps_management_compliance_policy_rules, attributes below
Required:
    - compliance_policy_id
    - display_name
    - patch_type_id
    - patch_selection (block):
        - days_since_release (optional)
        - patch_level (optional)
        - patch_name (optional)
        - selection_type (required)
    - product_version (block):
        - is_applicable_for_all_higher_versions (optional)
        - version (required)
Optional:
    - defined_tags
    - freeform_tags
    - grace_period
    - severity
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compliance_policy_id = string
    display_name         = string
    patch_type_id        = list(string)
    defined_tags         = optional(map(string))
    freeform_tags        = optional(map(string))
    grace_period         = optional(string)
    severity             = optional(list(string))
    patch_selection = object({
      days_since_release = optional(number)
      patch_level        = optional(string)
      patch_name         = optional(string)
      selection_type     = string
    })
    product_version = object({
      is_applicable_for_all_higher_versions = optional(bool)
      version                               = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_compliance_policy_rules : (
        contains([for v in ["PATCH_LEVEL", "PATCH_NAME", "PATCH_RELEASE_DATE"] : lower(v)], lower(v.patch_selection.selection_type))
      )
    ])
    error_message = "must be one of: \"PATCH_LEVEL\", \"PATCH_NAME\", \"PATCH_RELEASE_DATE\""
  }
}

