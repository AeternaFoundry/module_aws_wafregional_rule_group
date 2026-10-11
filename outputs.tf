output "wafregional_rule_groups_id" {
  description = "Map of id values across all wafregional_rule_groups, keyed the same as var.wafregional_rule_groups"
  value       = { for k, v in aws_wafregional_rule_group.wafregional_rule_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "wafregional_rule_groups_activated_rule" {
  description = "Map of activated_rule values across all wafregional_rule_groups, keyed the same as var.wafregional_rule_groups"
  value       = { for k, v in aws_wafregional_rule_group.wafregional_rule_groups : k => v.activated_rule if v.activated_rule != null && length(v.activated_rule) > 0 }
}
output "wafregional_rule_groups_arn" {
  description = "Map of arn values across all wafregional_rule_groups, keyed the same as var.wafregional_rule_groups"
  value       = { for k, v in aws_wafregional_rule_group.wafregional_rule_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "wafregional_rule_groups_metric_name" {
  description = "Map of metric_name values across all wafregional_rule_groups, keyed the same as var.wafregional_rule_groups"
  value       = { for k, v in aws_wafregional_rule_group.wafregional_rule_groups : k => v.metric_name if v.metric_name != null && length(v.metric_name) > 0 }
}
output "wafregional_rule_groups_name" {
  description = "Map of name values across all wafregional_rule_groups, keyed the same as var.wafregional_rule_groups"
  value       = { for k, v in aws_wafregional_rule_group.wafregional_rule_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "wafregional_rule_groups_region" {
  description = "Map of region values across all wafregional_rule_groups, keyed the same as var.wafregional_rule_groups"
  value       = { for k, v in aws_wafregional_rule_group.wafregional_rule_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "wafregional_rule_groups_tags" {
  description = "Map of tags values across all wafregional_rule_groups, keyed the same as var.wafregional_rule_groups"
  value       = { for k, v in aws_wafregional_rule_group.wafregional_rule_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "wafregional_rule_groups_tags_all" {
  description = "Map of tags_all values across all wafregional_rule_groups, keyed the same as var.wafregional_rule_groups"
  value       = { for k, v in aws_wafregional_rule_group.wafregional_rule_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

