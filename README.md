# AWS Terraform (CLI)

Beginner-friendly Terraform project to learn AWS and infrastructure automation from the command line.

## Learning Goals

- Understand how Terraform connects to AWS using the provider block
- Learn how to provision an EC2 instance using Terraform code
- Practice AWS CLI credential setup with `aws configure`
- Build confidence with core Terraform CLI commands (`init`, `plan`, `apply`, `destroy`)

## What This Project Does

- Configures the AWS provider in `us-east-1`
- Creates one EC2 instance (`t2.micro`)
- Adds a `Name` tag: `terraform-lab-instance`
- Exposes instance details through Terraform outputs

## Project Files

- `main.tf` - Provider and EC2 resource definition
- `output.tf` - Output values from created resources
- `.terraform.lock.hcl` - Provider dependency lock file

## Prerequisites

- Terraform installed (v1.x recommended)
- AWS CLI installed
- AWS account with permissions to create EC2 resources

## AWS CLI Configuration

Configure credentials before running Terraform:

```bash
aws configure
```

Provide:
- AWS Access Key ID
- AWS Secret Access Key
- Default region (example: `us-east-1`)
- Output format (`json` is fine)

## Terraform Workflow

Run from the project directory:

```bash
terraform init
terraform plan
terraform apply
```

To destroy resources when finished:

```bash
terraform destroy
```

## Useful Commands

Show outputs:

```bash
terraform output
```

Show current state:

```bash
terraform show
```

## Notes

- `terraform.tfstate` contains resource state for this project.
- Review `terraform plan` output before every `apply`.
- Destroy unused resources to avoid AWS charges.
