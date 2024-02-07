terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }

  backend "s3" {
    endpoints = {
      s3 = "https://ams3.digitaloceanspaces.com"
    }
    key                         = "terraform/terraform-digitalocean/terraform.tfstate"
    bucket                      = "managed-prototypes"
    region                      = "us-east-1" # Incorrect for DO, but the field is required by TF
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_s3_checksum            = true
  }
}

variable "do_pat" {}
variable "do_ssh_pvt_key" {}

provider "digitalocean" {
  token = var.do_pat
}

data "digitalocean_ssh_key" "terraform" {
  name = "terraform"
}
