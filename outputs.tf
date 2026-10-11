output "fleet_apps_management_compliance_policy_rules_id" {
  description = "Map of id values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no id are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_compartment_id" {
  description = "Map of compartment_id values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no compartment_id are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_compliance_policy_id" {
  description = "Map of compliance_policy_id values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no compliance_policy_id are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.compliance_policy_id if v.compliance_policy_id != null && length(v.compliance_policy_id) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_defined_tags" {
  description = "Map of defined_tags values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no defined_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_display_name" {
  description = "Map of display_name values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no display_name are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_freeform_tags" {
  description = "Map of freeform_tags values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_grace_period" {
  description = "Map of grace_period values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no grace_period are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.grace_period if v.grace_period != null && length(v.grace_period) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_lifecycle_details" {
  description = "Map of lifecycle_details values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_patch_selection" {
  description = "Map of patch_selection values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no patch_selection are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => one(v.patch_selection) if v.patch_selection != null && length(v.patch_selection) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_patch_type_id" {
  description = "Map of patch_type_id values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no patch_type_id are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.patch_type_id if v.patch_type_id != null && length(v.patch_type_id) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_product_version" {
  description = "Map of product_version values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no product_version are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => one(v.product_version) if v.product_version != null && length(v.product_version) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_severity" {
  description = "Map of severity values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no severity are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.severity if v.severity != null && length(v.severity) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_state" {
  description = "Map of state values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no state are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.state if v.state != null && length(v.state) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_system_tags" {
  description = "Map of system_tags values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no system_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_time_created" {
  description = "Map of time_created values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no time_created are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "fleet_apps_management_compliance_policy_rules_time_updated" {
  description = "Map of time_updated values across all fleet_apps_management_compliance_policy_rules, keyed the same as var.fleet_apps_management_compliance_policy_rules except keys with no time_updated are omitted"
  value       = { for k, v in oci_fleet_apps_management_compliance_policy_rule.fleet_apps_management_compliance_policy_rules : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

