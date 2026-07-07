resource "scm_url_category" "blocked_urls" {
  folder      = "Prisma Access"
  name        = "blocked_urls"
  description = "FQDN blocklist managed via Terraform"
  type        = "URL List"
  list = var.blocked_urls
}
