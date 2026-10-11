resource "aws_wafregional_rule_group" "wafregional_rule_groups" {
  for_each = var.wafregional_rule_groups

  metric_name = each.value.metric_name
  name        = each.value.name
  region      = each.value.region
  tags        = each.value.tags
  tags_all    = each.value.tags_all

  dynamic "activated_rule" {
    for_each = each.value.activated_rule != null ? each.value.activated_rule : []
    content {
      action {
        type = activated_rule.value.action.type
      }
      priority = activated_rule.value.priority
      rule_id  = activated_rule.value.rule_id
      type     = activated_rule.value.type
    }
  }
}

