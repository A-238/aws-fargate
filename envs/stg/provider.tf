provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Env    = "stg"
      System = "example"
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.96.0"
    }
  }

  required_version = "1.11.4"
}
