variable "iot_provisioning_templates" {
  description = <<EOT
Map of iot_provisioning_templates, attributes below
Required:
    - name
    - provisioning_role_arn
    - template_body
Optional:
    - description
    - enabled
    - region
    - tags
    - tags_all
    - type
    - pre_provisioning_hook (block):
        - payload_version (optional)
        - target_arn (required)
EOT

  type = map(object({
    name                  = string
    provisioning_role_arn = string
    template_body         = string
    description           = optional(string)
    enabled               = optional(bool)
    region                = optional(string)
    tags                  = optional(map(string))
    tags_all              = optional(map(string))
    type                  = optional(string)
    pre_provisioning_hook = optional(object({
      payload_version = optional(string)
      target_arn      = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iot_provisioning_templates : (
        (can(jsondecode(v.template_body))) && (length(v.template_body) >= 0 && length(v.template_body) <= 10240)
      )
    ])
    error_message = "all of: must be valid JSON; must be between 0 and 10240 characters"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

