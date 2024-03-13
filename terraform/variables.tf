variable "do_pat" {
  type = string
}

variable "do_ssh_pvt_key" {
  type = string
}

variable "application_name" {
  # Will be used for DNS records, use hypens.
  default = "web-droplet"
}
