provider "aws" {
  region     = "${var.aws_region}"
  version    = "~> 1.29"
  profile    = "jwswj"
}

provider "cloudflare" {
  email   = "${var.cloudflare_email}"
  token   = "${var.cloudflare_token}"
  version = "~> 1.1"
}

terraform {
  backend "s3" {
    bucket = "jwswj.com.terraform.state"
    region = "us-west-1"
    key    = "terraform.tfstate"
    profile = "jwswj"
  }
}
