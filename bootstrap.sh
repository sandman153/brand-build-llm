#!/bin/bash

# Set the project ID
PROJECT_ID="brand-build-gemini"

# Enable the Service Usage API
gcloud services enable serviceusage.googleapis.com --project $PROJECT_ID

# Now run Terraform
terraform -chdir="./iac-terraform/environments/prod" init
terraform -chdir="./iac-terraform/environments/prod" plan -out=tfplan
terraform -chdir="./iac-terraform/environments/prod" apply -auto-approve tfplan
