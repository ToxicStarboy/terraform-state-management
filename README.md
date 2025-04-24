# terraform-state-management
This project sets up a remote backend for Terraform using AWS S3 for storing state files and DynamoDB for state locking and consistency. Ideal for managing infrastructure securely and collaboratively.

# Terraform Backend with AWS

This project sets up a remote backend for Terraform using AWS S3 and DynamoDB.

## Features

- **S3** for storing the Terraform state file
- **DynamoDB** for state locking and consistency

## Prerequisites

- AWS CLI configured
- Terraform installed
- AWS IAM user with necessary permissions for S3 and DynamoDB

## Usage

1. Clone the repository
2. Initialize Terraform

```bash
terraform init
```
3. Apply the configuration

```bash
terraform apply
```
Cleanup
To destroy the infrastructure:

```bash
terraform destroy
```
