# state.tf
terraform {
  backend "s3" {
    bucket  = "terraform-state-alexsilva-us-east-2"
    key     = "site/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true

  }
}
