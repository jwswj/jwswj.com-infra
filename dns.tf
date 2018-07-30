resource "cloudflare_record" "jwswj" {
  domain  = "${var.domain_name}"
  name    = "${var.domain_name}"
  value   = "jwswj.com.s3-website-us-west-1.amazonaws.com"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "www" {
  domain  = "${var.domain_name}"
  name    = "www"
  value   = "${var.domain_name}"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_zone_settings_override" "jwswj" {
  name = "${var.domain_name}"
  settings {
    ssl = "flexible"
  }
}
