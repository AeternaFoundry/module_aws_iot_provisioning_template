output "iot_provisioning_templates_id" {
  description = "Map of id values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_provisioning_templates_arn" {
  description = "Map of arn values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iot_provisioning_templates_default_version_id" {
  description = "Map of default_version_id values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.default_version_id if v.default_version_id != null }
}
output "iot_provisioning_templates_description" {
  description = "Map of description values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.description if v.description != null && length(v.description) > 0 }
}
output "iot_provisioning_templates_enabled" {
  description = "Map of enabled values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.enabled if v.enabled != null }
}
output "iot_provisioning_templates_name" {
  description = "Map of name values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iot_provisioning_templates_pre_provisioning_hook" {
  description = "Map of pre_provisioning_hook values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => one(v.pre_provisioning_hook) if v.pre_provisioning_hook != null && length(v.pre_provisioning_hook) > 0 }
}
output "iot_provisioning_templates_provisioning_role_arn" {
  description = "Map of provisioning_role_arn values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.provisioning_role_arn if v.provisioning_role_arn != null && length(v.provisioning_role_arn) > 0 }
}
output "iot_provisioning_templates_region" {
  description = "Map of region values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.region if v.region != null && length(v.region) > 0 }
}
output "iot_provisioning_templates_tags" {
  description = "Map of tags values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "iot_provisioning_templates_tags_all" {
  description = "Map of tags_all values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "iot_provisioning_templates_template_body" {
  description = "Map of template_body values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.template_body if v.template_body != null && length(v.template_body) > 0 }
}
output "iot_provisioning_templates_type" {
  description = "Map of type values across all iot_provisioning_templates, keyed the same as var.iot_provisioning_templates"
  value       = { for k, v in aws_iot_provisioning_template.iot_provisioning_templates : k => v.type if v.type != null && length(v.type) > 0 }
}

