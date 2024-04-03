# Deployment via CLI

## Prerequisites

- [terraform](https://developer.hashicorp.com/terraform/install)
- [aws cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) (for TF S3 backend support)
- Configure AWS cli, using the `acces key` and `secret key` from DO

  ```sh
  aws configure --profile managed_prototypes_nonprod

  aws configure --profile managed_prototypes_prod
  ```

- Add an SSH key to DO team as `~/.ssh/managed_prototypes_nonprod` (and `~/.ssh/managed_prototypes_prod`)
- Get the `nonprod.tfvars` (and `prod.tfvars`) file with DO PAT token to the team (with write access)
- Just (for running commands)
  - `brew install just`

## Usage

```sh
just terraform/init

just terraform/apply

just terraform/destroy

just # List all commands
```

- Open http://droplet-ssh.prototyping.quest
