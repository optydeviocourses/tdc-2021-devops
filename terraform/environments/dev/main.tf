/*
terraform {
  cloud {
    organization = "tminussi"

    workspaces {
      name = "tdc-2021-devops"
    }
  }
} */

module "tdc" {
  source = "../../infra"
  env    = local.env
}