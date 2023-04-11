# Production Environment
resource "cloudflare_record" "demo_gangoffront_com_pages" {
  name    = var.domain
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = format("%s.pages.dev", var.project_name)
  zone_id = var.zone_id
}

resource "cloudflare_zone_settings_override" "demo_gangoffront_com_settings" {
  zone_id = var.zone_id

  settings {
    tls_1_3                  = "on"
    automatic_https_rewrites = "on"
    ssl                      = "strict"
  }
}

resource "cloudflare_pages_project" "demo_gangoffront_com" {
  account_id        = var.account_id
  name              = "demo-gangoffront-com"
  production_branch = "main"

  build_config {
    destination_dir = "build"
    build_command   = "pnpm nx build"
    root_dir        = "/apps/root/dist"
  }

  source {
    type = "github"
    config {
      owner                         = "gang-of-front"
      repo_name                     = "gangoffront.com"
      production_branch             = "main"
      pr_comments_enabled           = true
      deployments_enabled           = false
      production_deployment_enabled = false
      preview_branch_includes       = ["preview"]
      preview_branch_excludes       = ["main"]
    }
  }
}
