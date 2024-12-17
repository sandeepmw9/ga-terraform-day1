terraform {
  # backend "s3" {
  #   bucket = "tfstate1224"
  #   key    = "terraform_states"
  #   region = "ap-south-1"
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
