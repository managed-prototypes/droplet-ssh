resource "digitalocean_record" "a_record" {
  domain = "prototyping.quest"
  type = "A"
  name = "terraform-digitalocean"
  value = digitalocean_loadbalancer.lb.ip
}
