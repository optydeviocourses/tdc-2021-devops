terraform {
  cloud {
    organization = "tminussi"

    workspaces {
      name = "tdc-2021-devops"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.10.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "tdc-2021-devops-state-bucket"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}