terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.2.0"
    }
  }
  required_version = "~> 1.3.7"
}

provider "aws" {
  region  = "us-east-2"
  #needed if you are using aws profiles 
  #profile        = "sandbox"
}
