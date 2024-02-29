# Development

## Prerequisites for local run

- [terraform](https://developer.hashicorp.com/terraform/install)
- [aws cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) (for TF S3 backend support)
- Configure AWS cli, using the `acces key` and `secret key` from DO

      ```sh
      aws configure --profile managed_prototypes
      ```

- Add an SSH key to DO team as `~/.ssh/managed_prototypes`
- Get the `local.tfvars` file with DO PAT token to the team (with write access)
- Just (for running commands)
  - `brew install just`

## Run (local)

- Init

```sh
just init
```

- Plan

```sh
just plan
```

- Deploy (apply the configuration)

```sh
just deploy
```

- Check the result

  - And look for `ipv4_address` in the output.

```sh
just show
```

- Destroy

```sh
just destroy
```

## Reference articles

- https://docs.digitalocean.com/products/droplets/how-to/add-ssh-keys/to-team/
- https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean
