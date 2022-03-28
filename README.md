# Infrastructure for jwswj.com

** This is no longer need as I moved to Cloudflare Pages **

## Overview

Terraform managing Cloudflare and AWS.

Static files in a S3 bucket behind Cloudflare.

Deployment of infrastructure managed by AWS CodePipeline and CodeBuild.

## Local Setup

1. Install terraform `brew install terraform`
2. Setup AWS configuration (`~/.aws/configuration`) to have a `jwswj` profile
3. Create `terraform.tfvars` that contains 2 variables for authenticating against Cloudflare

## Running

1. `terraform plan`
2. `terraform apply`

## Things I'll never remember

Terraform state is stored in a private S3 bucket: `jwswj.com.terraform.state`.
It's configured via code, rather than via a command that many people seem to use.

There is no staging environment, only dev & production.

There is a manual approval step in the pipeline. The pipeline runs
`terraform plan` then waits for a manual approval before running
`terraform apply`. Terraform is downloaded for each phase.

## Todo

- [ ] Convert CodePipeline and CodeBuild configuration to Terraform
- [ ] Setup SES to email me for the manual approval stage of the Pipeline
