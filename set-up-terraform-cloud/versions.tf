terraform {
  required_version = "~> 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.14"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    # organization = "Your organization name"

    workspaces {
      name = "set-up-terraform-cloud"
    }
  }
}
