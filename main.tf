terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  cloud {
    organization = "fslorg"

    workspaces {
      name = "Production"
    }
  }


}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}
