resource "aws_security_group_rule" "add_rule" {
  description              = var.desc
  type                     = var.rule_type
  from_port                = var.fport
  to_port                  = var.tport
  protocol                 = var.protocol
  cidr_blocks              = var.cidr
  ipv6_cidr_blocks         = var.ipv6_cidr
  prefix_list_ids          = var.prefix_ids
  security_group_id        = var.security_group_id
  source_security_group_id = var.src_security_group_id
}

