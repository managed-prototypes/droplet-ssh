resource "digitalocean_record" "a_record" {
  domain = "prototyping.quest"
  type = "A"
  name = "web-droplet"
  value = digitalocean_loadbalancer.lb.ip
}
