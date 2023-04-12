terraform {
  cloud {
    organization = "gangoffront"

    workspaces {
      name = "mfe-architeture"
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

provider "aws" {
  access_key = var.cloudflare_r2_access_key
  secret_key = var.cloudflare_r2_secret_key
  skip_credentials_validation = true
  skip_region_validation = true
  skip_requesting_account_id = true
  region = "us-east-1"
  endpoints {
    s3 = format("https://%s.r2.cloudflarestorage.com", var.account_id)
  }
}

