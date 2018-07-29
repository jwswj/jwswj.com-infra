The repo contains the infrastructure for jwswj.com

# Setup

1. Install terraform `brew install terraform`
2. Setup AWS configuration (`~/.aws/configuration`) to have a `jwswj` profile
3. Create `terraform.tfvars` that contains variables for authenticating against Cloudflare and other variables not checked in to version control

# Running

1. `terraform plan`
2. `terraform apply`

# Details

Terraform state is stored in a private S3 bucket: `jwswj.com.terraform.state`
