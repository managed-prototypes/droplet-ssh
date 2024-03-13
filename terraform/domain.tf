resource "digitalocean_record" "a_record" {
  domain = "prototyping.quest"
  type = "A"
  name = var.application_name
  value = digitalocean_loadbalancer.lb.ip
}
