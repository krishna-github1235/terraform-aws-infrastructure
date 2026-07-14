terraform {
  backend "s3" {
    bucket = "krishna-terraform-state-2026"
    key    = "terraform-aws-infrastructure/terraform.tfstate"
    region = "us-east-1"

    encrypt = true
  }
}