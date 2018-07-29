resource "cloudflare_record" "jwswj" {
  domain  = "${var.domain_name}"
  name    = "${var.domain_name}"
  value   = "162.243.141.140"
  type    = "A"
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
