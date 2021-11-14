## This is a terraform file to create a github repository using the github provider
## Created by Karan Chhabra 14/11/2021

# Terraform provider block for github; needed for 0.13 and over #
terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.18.0"
    }
  }
}

# Github provider authentication #
provider "github" {
  token = "<Please Enter your GitHub Token here>"
  owner = "chhabrakaran7"
}

# Create Github repository #
resource "github_repository" "example" {
  name        = "automated-terraform-repo"
  description = "This repository is created programmatically using terraform"
  visibility = "public"
}