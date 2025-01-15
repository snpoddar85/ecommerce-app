terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

    backend "s3" {
      bucket         = "terraform-state-backend-6456236"
      key            = "terraform.tfstate"
      region         = "us-east-1"
      dynamodb_table = "terraform_state"
    }
}

provider "aws" {
  region  = "us-east-1"

}
