resource "oci_fleet_apps_management_compliance_policy_rule" "fleet_apps_management_compliance_policy_rules" {
  for_each = var.fleet_apps_management_compliance_policy_rules

  compliance_policy_id = each.value.compliance_policy_id
  display_name         = each.value.display_name
  patch_type_id        = each.value.patch_type_id
  defined_tags         = each.value.defined_tags
  freeform_tags        = each.value.freeform_tags
  grace_period         = each.value.grace_period
  severity             = each.value.severity

  patch_selection {
    days_since_release = each.value.patch_selection.days_since_release
    patch_level        = each.value.patch_selection.patch_level
    patch_name         = each.value.patch_selection.patch_name
    selection_type     = each.value.patch_selection.selection_type
  }

  product_version {
    is_applicable_for_all_higher_versions = each.value.product_version.is_applicable_for_all_higher_versions
    version                               = each.value.product_version.version
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

