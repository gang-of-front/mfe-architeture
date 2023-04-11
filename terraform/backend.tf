terraform {
  cloud {
    organization = "gangoffront"

    workspaces {
      name = "gangoffrontcom"
    }
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "cloudflare" {}
