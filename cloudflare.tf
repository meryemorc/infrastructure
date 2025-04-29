terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}

resource "cloudflare_record" "meryem_dns" {
  zone_id = var.cloudflare_zone_id
  name    = "meryemoruc.com"
  type    = "A"
  value   = aws_instance.meryemoruc_server.public_ip
  ttl     = 300
  proxied = false
}
