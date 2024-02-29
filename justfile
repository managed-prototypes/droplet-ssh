_default:
  @ just --list --unsorted 

# ------------------------- Deployment from dev machine -------------------------

# Init (fetch dependencies and state)
init:
  #!/bin/sh
  set -eu
  AWS_PROFILE=managed_prototypes \
    terraform init

# Plan (dry run)
plan:
  #!/bin/sh
  set -eu
  TF_VAR_do_ssh_pvt_key=$(cat ~/.ssh/managed_prototypes) \
    AWS_PROFILE=managed_prototypes \
    terraform plan \
    -var-file="local.tfvars"

# Apply (deploy)
deploy:
  #!/bin/sh
  set -eu
  TF_VAR_do_ssh_pvt_key=$(cat ~/.ssh/managed_prototypes) \
    AWS_PROFILE=managed_prototypes \
    terraform apply \
    -auto-approve \
    -var-file="local.tfvars"

# Destroy
destroy:
  #!/bin/sh
  set -eu
  TF_VAR_do_ssh_pvt_key=$(cat ~/.ssh/managed_prototypes) \
    AWS_PROFILE=managed_prototypes \
    terraform destroy \
    -auto-approve \
    -var-file="local.tfvars"

# Show the current state
show:
  #!/bin/sh
  set -eu
  AWS_PROFILE=managed_prototypes \
    terraform show
