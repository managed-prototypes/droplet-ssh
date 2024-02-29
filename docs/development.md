# Development

## Prerequisites for local run

- [terraform](https://developer.hashicorp.com/terraform/install)
- [aws cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) (for TF S3 backend support)
- Configure AWS cli

      ```sh
      aws configure --profile managed_prototypes
      ```

- Add an SSH key to DO team as `~/.ssh/managed_prototypes`
- Get the `local.tfvars` file with DO PAT token to the team (with write access)
- Use `zsh` or `bash`, but not `fish`

## Run (local)

- Init

```sh
AWS_PROFILE=managed_prototypes \
  terraform init
```

- Plan

```sh
TF_VAR_do_ssh_pvt_key=$(cat ~/.ssh/managed_prototypes) \
  AWS_PROFILE=managed_prototypes \
  terraform plan \
  -var-file="local.tfvars"
```

- Apply

```sh
TF_VAR_do_ssh_pvt_key=$(cat ~/.ssh/managed_prototypes) \
  AWS_PROFILE=managed_prototypes \
  terraform apply \
  -auto-approve \
  -var-file="local.tfvars"
```

- Check

```sh
AWS_PROFILE=managed_prototypes \
  terraform show
```

- And look for `ipv4_address` in the output.
- Destroy

```sh
TF_VAR_do_ssh_pvt_key=$(cat ~/.ssh/managed_prototypes) \
  AWS_PROFILE=managed_prototypes \
  terraform destroy \
  -auto-approve \
  -var-file="local.tfvars"
```

## Reference articles

- https://docs.digitalocean.com/products/droplets/how-to/add-ssh-keys/to-team/
- https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean
