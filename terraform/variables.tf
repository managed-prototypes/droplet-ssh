variable "do_pat" {
  type = string
  sensitive = true
}

variable "do_ssh_pvt_key" {
  type = string
}

variable "application_name" {
  type = string
  default = "web-droplet"
  description = "Will be used for DNS records, use hypens"
}
