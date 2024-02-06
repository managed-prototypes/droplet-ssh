# terraform-digitalocean

## Prerequisites

- [terraform](https://developer.hashicorp.com/terraform/install)
- Have team on DO
- Add an SSH key to DO team, name it `terraform`
- Add a PAT token to the team, with write access
- Have a place to store the `terraform.tfstate` and `terraform.tfstate.backup`

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
- Destroy

```sh
terraform destroy \
  -var "do_token=xxx" \
  -var "pvt_key=$HOME/.ssh/id_ed25519"
```

## Reference articles

- https://docs.digitalocean.com/products/droplets/how-to/add-ssh-keys/to-team/
- https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean
