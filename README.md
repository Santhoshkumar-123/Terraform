# Terraform - Day 1 Practice

Provisioning an AWS EC2 instance using Terraform for the first time.

## What I Built

- Launched an EC2 instance (`t3.micro`) on AWS
- Used a **data source** to dynamically fetch the latest Ubuntu 22.04 AMI (so the AMI ID never goes stale)
- Tagged the instance as `HelloWorld`

## Concepts Learned

- `terraform init` — downloads the required provider plugins (AWS in this case)
- `terraform plan` — previews what Terraform will create/change/destroy
- `terraform apply` — actually provisions the infrastructure
- `terraform destroy` — tears down everything created
- **Data sources** (`data`) — read existing info from AWS instead of hardcoding values
- **Resources** (`resource`) — define the infrastructure you want to create
- **State file** (`terraform.tfstate`) — how Terraform tracks what it has deployed (not pushed to Git)

## Project Structure

```
Terraform/
├── main.tf                  # Infrastructure definition
├── .terraform.lock.hcl      # Provider version lock file
├── .gitignore               # Excludes state files and binaries
└── README.md                # This file
```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads) installed
- AWS CLI configured with valid credentials (`aws configure`)

## Usage

```bash
# Initialize Terraform (download providers)
terraform init

# Preview the changes
terraform plan

# Apply and create the infrastructure
terraform apply

# Destroy the infrastructure when done
terraform destroy
```

## Provider

- **AWS Provider** — `hashicorp/aws`
- **Region** — configured via AWS CLI or provider block
- **AMI** — Latest Ubuntu 22.04 LTS (dynamically fetched from Canonical's account)
