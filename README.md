# terraform-digitalocean

## Run

- Plan

```sh
terraform plan \
  -var "do_token=xxx" \
  -var "pvt_key=$HOME/.ssh/id_ed25519"
```

- Apply

```sh
terraform apply \
  -var "do_token=xxx" \
  -var "pvt_key=$HOME/.ssh/id_ed25519"
```

- Check

```sh
terraform show terraform.tfstate
```

- And look for `ipv4_address` in the output.

## Reference articles

- https://docs.digitalocean.com/products/droplets/how-to/add-ssh-keys/to-team/
- https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean
