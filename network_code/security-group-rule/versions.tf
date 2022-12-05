terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "<=3.33.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "<=2.19.0"
    }
  }
}