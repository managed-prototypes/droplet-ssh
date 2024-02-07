# terraform-digitalocean

## Prerequisites

- [terraform](https://developer.hashicorp.com/terraform/install)
- [aws cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) (for TF S3 backend support)
- Have team on DO
- Add an SSH key to DO team, name it `terraform`
- Add a PAT token to the team, with write access
- Have a place to store the `terraform.tfstate` and `terraform.tfstate.backup`

## Run

- Configure AWS cli

```sh
aws configure --profile managed_prototypes
```

- Init

```sh
AWS_PROFILE=managed_prototypes \
  terraform init
```

- Plan

```sh
AWS_PROFILE=managed_prototypes \
  terraform plan \
  -var "do_token=xxx" \
  -var "pvt_key=$HOME/.ssh/id_ed25519"
```

- Apply

```sh
AWS_PROFILE=managed_prototypes \
  terraform apply \
  -auto-approve \
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
AWS_PROFILE=managed_prototypes \
  terraform destroy \
  -auto-approve \
  -var "do_token=xxx" \
  -var "pvt_key=$HOME/.ssh/id_ed25519"
```

## Reference articles

- https://docs.digitalocean.com/products/droplets/how-to/add-ssh-keys/to-team/
- https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean
