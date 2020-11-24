# ------------------------------------------------------------------------------
# nacl rule
# ------------------------------------------------------------------------------
resource "aws_network_acl_rule" "nacl_rule" {
    count = length(var.nacls)

    network_acl_id = var.vpc_nacl.id

    rule_number = var.nacls[count.index]["rule_number"]
    egress      = var.nacls[count.index]["egress"]
    protocol    = var.nacls[count.index]["protocol"]
    rule_action = var.nacls[count.index]["rule_action"]
    cidr_block  = var.nacls[count.index]["cidr_block"]
    from_port   = var.nacls[count.index]["from_port"]
    to_port     = var.nacls[count.index]["to_port"]
}
