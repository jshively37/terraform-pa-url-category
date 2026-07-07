resource "scm_security_rule" "block_outbound_traffic" {
  folder            = "Prisma Access"
  name              = "Enforce-FQDN-Blocklist"
  action            = "deny"
  position          = "pre"
  relative_position = "top"
  category          = [scm_url_category.blocked_urls.name]

  from        = ["trust"]
  source      = ["any"]
  to          = ["untrust"]
  destination = ["any"]
  application = ["any"]
  service     = ["any"]
}
