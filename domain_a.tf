resource "digitalocean_record" "a_record" {
  domain = "prototyping.quest"
  type = "A"
  name = "test"
  value = digitalocean_loadbalancer.lb.ip
}
