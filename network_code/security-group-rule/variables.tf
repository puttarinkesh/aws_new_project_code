variable "num_of_rules" {
  description = "Number of Security group rules added"
  type        = number
}

variable "desc" {
  description = "Description of the rule."
  type        = list(string)

}
variable "rule_type" {
  description = "The type of rule being created. Valid options are ingress (inbound) or egress (outbound)."
  type        = list(string)

}
variable "fport" {
  description = " The start port (or ICMP type number if protocol is icmp or icmpv6)."
  type        = list(number)

}
variable "tport" {
  description = "The end port (or ICMP code if protocol is icmp)."
  type        = list(number)

}
variable "protocol" {
  description = " The protocol. If not icmp, icmpv6, tcp, udp, or all use the protocol number"
  type        = list(string)

}
variable "cidr" {
  description = " List of CIDR blocks."
  type        = list(list(string))

}
variable "ipv6_cidr" {
  description = "List of IPv6 CIDR blocks."
  type        = list(list(string))
}
variable "prefix_ids" {
  description = "List of prefix list IDs"
  type        = list(list(string))

}
variable "security_group_id" {
  description = "The security group to apply this rule to."
  type        = string

}
variable "src_security_group_id" {
  description = "The security group id to allow access to/from, depending on the type. Cannot be specified with cidr_blocks and self."
  type        = list(string)

}
