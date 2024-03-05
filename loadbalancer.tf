resource "digitalocean_loadbalancer" "lb" {
  name = "lb"
  region = "ams3"

  forwarding_rule {
    entry_port = 80
    entry_protocol = "http"

    target_port = 80
    target_protocol = "http"
  }

  healthcheck {
    port = 22
    protocol = "tcp"
  }

  droplet_ids = [digitalocean_droplet.terraform-digitalocean-nginx.id, digitalocean_droplet.terraform-digitalocean-nginx-2.id ]
}
