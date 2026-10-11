variable "wafregional_rule_groups" {
  description = <<EOT
Map of wafregional_rule_groups, attributes below
Required:
    - metric_name
    - name
Optional:
    - region
    - tags
    - tags_all
    - activated_rule (block):
        - action (required, block):
            - type (required)
        - priority (required)
        - rule_id (required)
        - type (optional)
EOT

  type = map(object({
    metric_name = string
    name        = string
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    activated_rule = optional(list(object({
      action = object({
        type = string
      })
      priority = number
      rule_id  = string
      type     = optional(string)
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

